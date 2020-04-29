import string
import sys

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: make_vocab.py <input_file> <output_file>")
        exit(-1)
    else:
        vocab = {}
        with open(sys.argv[1],'r') as f:
            for l in f:
                l = l.strip().translate(str.maketrans('', '', string.punctuation))
                l = l.split(' ')
                for i in l:
                    if i not in vocab:
                        vocab[i] = 0
                    vocab[i] += 1
        del(vocab[''])
        with open("counts",'w') as w:
            for key in sorted(vocab.items(), key=lambda x:x[1], reverse=True):
                w.write("{}\t{}\n".format(key[0], key[1]))
        with open(sys.argv[2],'w') as w:
            w.write("<S>\n</S>\n<UNK>\n")
            for key in sorted(vocab.items(), key=lambda x:x[1], reverse=True):
                w.write("{}\n".format(key[0]))
