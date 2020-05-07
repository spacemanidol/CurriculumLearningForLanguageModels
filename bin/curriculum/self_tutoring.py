import sys
sys.path.append('../')

from bilm.training import get_sentence_perplexity, load_options_latest_checkpoint, load_vocab
from bilm.data import LMDataset, BidirectionalLMDataset

def get_cdf(id2perplexities):
    sentence_count = len(id2perplexities)
    id2difficulty = {}
    sorted_by_difficulty = {k: v for k, v in sorted(id2perplexities.items(), key=lambda item: item[1])}
    examples = float(1) #for cdf
    for idx in sorted_by_difficulty:
        id2difficulty[idx] = examples/sentence_count
        examples += 1
    return id2difficulty

if __name__ == "__main__":
    if len(sys.argv) != 5:
        print("Usage: self_tutoring.py <input_file> <save_dir> <vocab_file> <output_file>")
    else:
        """
        First we read through a file twice. 
        """
        options, ckpt_file = load_options_latest_checkpoint(sys.argv[2])
        if 'char_cnn' in options:
            max_word_length = options['char_cnn']['max_characters_per_token']
        else:
            max_word_length = None
        vocab = load_vocab(sys.argv[3], max_word_length)
        kwargs = {
            'test': True,
            'shuffle_on_load': False,
        }

        data = BidirectionalLMDataset(sys.argv[1], vocab, **kwargs)
        id2perplexities = get_sentence_perplexity(options, ckpt_file, data,1)
        id2difficulty = get_cdf(id2perplexities)
        idx = 0
        with open(sys.argv[1],'r') as f:
            with open(sys.argv[4],'w') as w:
                for l in f:
                    w.write("{}\t{}".format(id2difficulty[idx], l))
                    idx += 1
