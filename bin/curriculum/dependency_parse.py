import spacy
import string
import sys
nlp = spacy.load("en_core_web_lg")

def get_depth(node, depth):
    if node.n_lefts + node.n_rights > 0:
        return max([get_depth(child, depth + 1) for child in node.children])
    else:
        return depth

def get_cdf(id2len):
    sentence_count = len(id2len)
    id2difficulty = {}
    sorted_by_difficulty = {k: v for k, v in sorted(id2len.items(), key=lambda item: item[1])}
    examples = float(1) #for cdf
    for idx in sorted_by_difficulty:
        id2difficulty[idx] = examples/sentence_count
        examples += 1
    return id2difficulty

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: sentence_length.py <input_file> <output_file")
        exit(-1)
    else:
        """
        First we read through a file twice. First to get sentence length for each sentence which is used to produce a lineid_to_competence score
        We then read through a second time and output the correct CDF score for each line. 
        finally we sort the file using second column using sort -k 1 filename.txt
        """
    id2difficulty = {}
    idx = 0
    with open(sys.argv[1],'r') as f:
        for l in f:
            doc = nlp(l.strip())
            id2difficulty[idx] = 0
            if len(doc) > 0:
                id2difficulty[idx] = get_depth([token for token in doc if token.head == token][0], 1)
            idx += 1

    id2difficulty = get_cdf(id2difficulty)
    idx = 0
    with open(sys.argv[1],'r') as f:
        with open(sys.argv[2],'w') as w:
            for l in f:
                w.write("{}\t{}".format(id2difficulty[idx], l))
                idx += 1
