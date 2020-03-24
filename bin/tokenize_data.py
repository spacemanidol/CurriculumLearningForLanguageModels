import argparse
import random

from bilm.training import load_vocab

def dump_processed_shard_load_shard(vocab, shard_name):
        """Read one file backwards and forwards, get a ids lookup and drop output.

        Args:
            shard_name: file path.

        Returns:
            Nothing
        """
        print('Loading data from: %s' % shard_name)
        with open(shard_name) as f:
            sentences_raw = f.readlines()
        
        sentences_reverse = []
        for sentence in sentences_raw:
            splitted = sentence.split()
            splitted.reverse()
            sentences_reverse.append(' '.join(splitted))
        sentences = sentences_raw
        random.shuffle(sentences)
        random.shuffle(sentences_reverse)
        ids = [vocab.encode(sentence, False) for sentence in sentences]
        ids_reverse = [vocab.encode(sentence, True) for sentence in sentences]
        sentence_count = len(sentences)
        chars_ids = [None] * len(ids)
        print("There are {} sentences".format(sentence_count))
        with open(shard_name+"processed",'w') as w:
            w.write("sentence\treversed_sentence\tids\treversed_ids\tchar_is\n")
            for i in range(sentence_count):
                w.write("{}\t{}\t{}\t{}\t{}\n".format(sentences[i].strip(),sentences_reverse[i].strip(), str(ids[i]), list(ids_reverse[i]), chars_ids[i]))
        print("Done printing tokenized sentences")
def main(args):
    vocab = load_vocab(args.vocab_file, args.vocab_min_occur)
    print("Processing test files")
    dump_processed_shard_load_shard(vocab,args.test_prefix)
    print("Processing train files")
    dump_processed_shard_load_shard(vocab,args.train_prefix)

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--vocab_min_occur',type=int, default=50, help='Min occurrence of word in vocab')
    parser.add_argument('--vocab_file', default='wikitext-2/vocab.txt', help='Vocabulary file')
    parser.add_argument('--train_prefix', default='wikitext-2/wiki.train.tokens', help='Prefix for train files')
    parser.add_argument('--test_prefix', default='wikitext-2/wiki.test.tokens',help='Prefix for test files')
    args = parser.parse_args()
    main(args)