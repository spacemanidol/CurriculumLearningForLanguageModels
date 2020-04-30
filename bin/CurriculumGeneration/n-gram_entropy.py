import string
import sys
import math

def get_cdf(id2diff):
    sentence_count = len(id2diff)
    id2difficulty = {}
    sorted_by_difficulty = {k: v for k, v in sorted(id2diff.items(), key=lambda item: item[1])}
    examples = float(1) #for cdf
    for idx in sorted_by_difficulty:
        id2difficulty[idx] = examples/sentence_count
        examples += 1
    return id2difficulty
    
def get_probs(n_gram,occurrences):
    probabilities = {}
    for gram in n_gram:
        probs = n_gram[gram]
        probs /= occurrences
        probabilities[gram] = math.log(probs)
    return probabilities
    
if __name__ == "__main__":
    if len(sys.argv) != 5:
        print("Usage: n-gram_entropy.py <input_file> <unigram output> <bigram output> <trigram output>")
        exit(-1)
    else:
        """
        First we read through a file three times. First to get the n-gram probability. Second to assign a n-gram difficulty, finally to output a CDF for each line. 
        """
        unigrams, bigrams, trigrams = {},{},{}
        total_unigrams, total_bigrams, total_trigrams = 0, 0 ,0
        with open(sys.argv[1],'r') as f:
            for l in f:
                l = l.strip().translate(str.maketrans('', '', string.punctuation))
                l = [i for i in l.split(' ') if i != '']
                for i in range(len(l)):
                    uni = l[i]
                    if uni not in unigrams:
                        unigrams[uni] = 0 
                    unigrams[uni] += 1
                    total_unigrams += 1
                    if i < len(l) - 1:
                        bi = ' '.join([l[i], l[i+1]])
                        if bi not in bigrams:
                            bigrams[bi] = 0 
                        bigrams[bi] += 1
                        total_bigrams += 1
                    if i < len(l) - 2:
                        tri = ' '.join([l[i], l[i+1], l[i+2]])
                        if tri not in trigrams:
                            trigrams[tri] = 0 
                        trigrams[tri] += 1
                        total_trigrams += 1
        print("Unique unigrams found:{}\n Bigrams: {}\n Trigrams: {}".format(len(unigrams), len(bigrams), len(trigrams)))
        unigram_probs = get_probs(unigrams, total_unigrams)
        bigram_probs = get_probs(bigrams, total_bigrams)
        trigram_probs = get_probs(trigrams, total_trigrams)

        idx = 0
        id2unigram_difficulty, id2bigram_difficulty, id2trigram_difficulty = {}, {}, {}
        with open(sys.argv[1],'r') as f:
            for l in f:
                l = l.strip().translate(str.maketrans('', '', string.punctuation))
                l = [i for i in l.split(' ') if i != '']
                difficulties = [1,1,1]
                for i in range(len(l)):
                    difficulties[0] *= unigram_probs[l[i]]
                    if i < len(l) - 1:
                        difficulties[1] *= bigram_probs[' '.join([l[i], l[i+1]])]
                    if i < len(l) - 2:
                        difficulties[2] *= trigram_probs[' '.join([l[i], l[i+1],l[i+2]])]
                id2unigram_difficulty[idx] = difficulties[0]
                id2bigram_difficulty[idx] = difficulties[1]
                id2trigram_difficulty[idx] = difficulties[2]
                idx += 1 
        id2unigram_difficulty = get_cdf(id2unigram_difficulty)
        id2bigram_difficulty = get_cdf(id2bigram_difficulty)
        id2trigram_difficulty = get_cdf(id2trigram_difficulty)
        
        idx = 0
        with open(sys.argv[1],'r') as f:
            with open(sys.argv[2],'w') as w1:
                with open(sys.argv[3],'w') as w2:
                    with open(sys.argv[3],'w') as w3:
                        for l in f:
                            w1.write("{}\t{}".format(id2unigram_difficulty[idx], l))
                            w2.write("{}\t{}".format(id2bigram_difficulty[idx], l))
                            w3.write("{}\t{}".format(id2trigram_difficulty[idx], l))
                            idx += 1
