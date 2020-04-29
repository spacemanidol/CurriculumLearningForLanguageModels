import string
import sys

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: make_sentence.py <input_file> <output_file>")
        exit(-1)
    else:
        vocab = {}
        with open(sys.argv[1],'r') as f:
            with open(sys.argv[2],'w') as w:
                for l in f:
                    for i in l.split('.'):
                        if len(i) > 2:
                            w.write("{}\n".format(i.strip('\n')))