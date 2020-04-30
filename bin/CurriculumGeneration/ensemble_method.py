import sys

def load_sent2cdf(filename):
    id2cdf = {}
    idx = 0
    with open(filename,'r') as f:
        for l in f:
            l = l.strip().split('\t')
            id2cdf[idx] = l[0]
    return id2cdf

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
    if len(sys.argv) != 9:
        print("Usage: ensemble_method.py <input_file> <sentence_length.tsv> <pos.tsv> <dep.tsv> <unigram.tsv> <bigram.tsv> <trigram.tsv> <output_file>")
        exit(-1)
    else:
        """
        we add together all the cdfs and normalize
        """
    id2lens = [{},{},{},{},{},{}]
    id2len[0] = load_sent2cdf(sys.argv[2])
    id2len[1] = load_sent2cdf(sys.argv[3])
    id2len[2] = load_sent2cdf(sys.argv[4])
    id2len[3] = load_sent2cdf(sys.argv[5])
    id2len[4] = load_sent2cdf(sys.argv[6])
    id2len[5] = load_sent2cdf(sys.argv[7])
    id2len = {}
    idx = 0
    with open(sys.argv[1],'r') as f:
        for l in f:
            l = l.strip().split(' ') #split on whitespace
            id2difficulty[idx] = id2len[0][idx] + id2len[1][idx] + id2len[2][idx] + id2len[3][idx] + id2len[4][idx] + id2len[5][idx]
            idx += 1

    id2difficulty = get_cdf(id2len)
    idx = 0
    with open(sys.argv[1],'r') as f:
        with open(sys.argv[8],'w') as w:
            for l in f:
                w.write("{}\t{}".format(id2difficulty[idx], l))
                idx += 1