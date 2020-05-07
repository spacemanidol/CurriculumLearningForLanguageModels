import string
import sys
import spacy

nlp = spacy.load("en_core_web_lg")
doc = nlp("This is a sentence. This is another sentence.")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: make_sentence.py <input_file> <output_file>")
        exit(-1)
    else:
        vocab = {}
        with open(sys.argv[1],'r') as f:
            with open(sys.argv[2],'w') as w:
                for l in f:
                    #doc = nlp(l)
                    for sent in l.split('.'):
                    #for sent in doc.sents:
                        if len(sent) > 2:
                            w.write("{}\n".format(sent))
