from __future__ import division          #integer division
from collections import defaultdict
import random
import string        #some string-related utilities
import sys        #for command-line args
import math

def text_analyze(filename):
    countsdict = defaultdict(int)
    letterdict = defaultdict(int)
    lendict = defaultdict(int)
    lendictWT = defaultdict(int)
    lendictTokens = defaultdict(int)


    #defaultdict make a dictionary where all the values are ints, implicitly initializes every value to 0.
    #For a dictionary where values are lists and initial values are [], use defaultdict(list)
    Tokens= 0
    for line in open(filename):  #lazy reading
        #split along whitespace. To split along any other symbol, line.split(','), etc.
        words = line.lower().split()

        for word in words:
            #strip punctuation and add count
            word = word.strip(string.punctuation)
            if word!='':
                countsdict[word]+=1
                Tokens+=1
            #for frequency of letters
            for letter in word:
                letterdict[letter] +=1

        ##Data for Word Type vs Word Length 
        for lenword in words:
            lendictWT[len(lenword)] +=1
        value = 1
        for value in lendictWT:
            if  value < 20:
                LengthbyTypes = lendictWT[value]/int(str(len(countsdict)))
                print "word length/ word types" , "letters:", value, LengthbyTypes 
                value = value + 1
        #white space
        print " "

        ##Data for Word Tokens vs Word Length graph
        for lenword in words:
            lendictTokens[len(lenword)] +=1
        value = 1    
        for value in lendictTokens:
            if value < 20:
                LengthbyTokens = lendictTokens[value]/ int(str(Tokens))
                print "word length/word tokens", "letters:", value, LengthbyTokens
                value = value + 1
        #Calculate entropy for unigrams
        entropy = 0.0
        for word in countsdict:
             entropy -= (countsdict[word]/ Tokens)*(math.log(countsdict[word]/Tokens, 2))
        #calculate entropy for bigrams
   
    print 'dictionary mapping words to their frequency in the text', countsdict
    #word frequencies against rank f:
    print sorted(countsdict.items(), key=lambda x: x[1])
    #Two other measurable features:
    print "frequency distributions of letters:" , letterdict
    print 'letters with their frequencies', lendictTokens
    print "Number of word types:" + str(len(countsdict)) + ', ' + "Number of Tokens:" + str(Tokens) + ', ' "Ratio:", Tokens/len(countsdict) 
    print "Entropy of words", entropy

if __name__=='__main__':   #main function
    analyzetext = text_analyze(sys.argv[1])   #filename is first parameter
