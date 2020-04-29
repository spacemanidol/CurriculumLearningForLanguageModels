import string
import sys

def load_vocab(filename):
    vocab = []
    with open(filename,'r') as f:
        for l in f:
            l = l.strip()
            vocab.append(l)
    return vocab
    
if __name__ == "__main__":
    if len(sys.argv) != 5:
        print("Usage: make_vocab_based_curriculum.py <vocab_file> <input_file> <output_file> <vocab_size>")
        exit(-1)
    else:
        vocab = load_vocab(sys.argv[1])[:int(sys.argv[4])]
        print("Loaded vocab and set to target size {}".format(len(vocab)))
        with open(sys.argv[2],'r') as f:
            with open(sys.argv[3],'w') as w:
                for l in f:
                    tmp = ''
                    l = l.strip().translate(str.maketrans('', '', string.punctuation)).split(' ')
                    for i in range(len(l)):
                        if l[i] in vocab:
                            tmp += l[i]
                        else:
                            tmp += '<unk>'
                        tmp += ' '
                    w.write("{}\n".format(tmp))

