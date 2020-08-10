shuf wikitext-103/wiki.train.tokens > wikitext-103/wiki.train.tokens.random_line
python bin/curriculum/dependency_parse.py wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.dep_line
sort -k 1 wikitext-103/wiki.train.tokens.dep_line | tr "\t" "~" | cut -d "~" -f2 > wikitext-103/wiki.train.tokens.dep_line_sort
python bin/curriculum/pos.py wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.pos_line
sort -k 1 wikitext-103/wiki.train.tokens.pos_line | tr "\t" "~" | cut -d "~" -f2 > wikitext-103/wiki.train.tokens.pos_line_sort
python bin/curriculum/sentence_length.py wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.len_line
sort -k 1 wikitext-103/wiki.train.tokens.len_line | tr "\t" "~" | cut -d "~" -f2 > wikitext-103/wiki.train.tokens.len_line_sort
python bin/curriculum/n-gram_entropy.py wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.unigram_line wikitext-103/wiki.train.tokens.bigram_line wikitext-103/wiki.train.tokens.trigram_line
sort -k 1 wikitext-103/wiki.train.tokens.unigram_line | tr "\t" "~" | cut -d "~" -f2 > wikitext-103/wiki.train.tokens.unigram_line_sort
sort -k 1 wikitext-103/wiki.train.tokens.bigram_line | tr "\t" "~" | cut -d "~" -f2 > wikitext-103/wiki.train.tokens.bigram_line_sort
sort -k 1 wikitext-103/wiki.train.tokens.trigram_line | tr "\t" "~" | cut -d "~" -f2 > wikitext-103/wiki.train.tokens.trigram_line_sort
shuf wikitext-103/wiki.train.tokens.sent > wikitext-103/wiki.train.tokens.random
python bin/curriculum/dependency_parse.py wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.dep
sort -k 1 wikitext-103/wiki.train.tokens.dep | tr "\t" "~" | cut -d "~" -f2 > wikitext-103/wiki.train.tokens.dep_sort
python bin/curriculum/pos.py wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.pos
sort -k 1 wikitext-103/wiki.train.tokens.pos | tr "\t" "~" | cut -d "~" -f2 > wikitext-103/wiki.train.tokens.pos_sort
python bin/curriculum/sentence_length.py wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.len
sort -k 1 wikitext-103/wiki.train.tokens.len | tr "\t" "~" | cut -d "~" -f2 > wikitext-103/wiki.train.tokens.len_sort
python bin/curriculum/n-gram_entropy.py wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.unigram wikitext-103/wiki.train.tokens.bigram wikitext-103/wiki.train.tokens.trigram
sort -k 1 wikitext-103/wiki.train.tokens.unigram | tr "\t" "~" | cut -d "~" -f2 > wikitext-103/wiki.train.tokens.unigram_sort
sort -k 1 wikitext-103/wiki.train.tokens.bigram | tr "\t" "~" | cut -d "~" -f2 > wikitext-103/wiki.train.tokens.bigram_sort
sort -k 1 wikitext-103/wiki.train.tokens.trigram | tr "\t" "~" | cut -d "~" -f2 > wikitext-103/wiki.train.tokens.trigram_sort
shuf wikitext-2/wiki.train.tokens > wikitext-2/wiki.train.tokens.random_line
python bin/curriculum/dependency_parse.py wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.dep_line
sort -k 1 wikitext-2/wiki.train.tokens.dep_line | tr "\t" "~" | cut -d "~" -f2 > wikitext-2/wiki.train.tokens.dep_line_sort
python bin/curriculum/pos.py wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.pos_line
sort -k 1 wikitext-2/wiki.train.tokens.pos_line | tr "\t" "~" | cut -d "~" -f2 > wikitext-2/wiki.train.tokens.pos_line_sort
python bin/curriculum/sentence_length.py wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.len_line
sort -k 1 wikitext-2/wiki.train.tokens.len_line | tr "\t" "~" | cut -d "~" -f2 > wikitext-2/wiki.train.tokens.len_line_sort
python bin/curriculum/n-gram_entropy.py wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.unigram_line wikitext-2/wiki.train.tokens.bigram_line wikitext-2/wiki.train.tokens.trigram_line
sort -k 1 wikitext-2/wiki.train.tokens.unigram_line | tr "\t" "~" | cut -d "~" -f2 > wikitext-2/wiki.train.tokens.unigram_line_sort
sort -k 1 wikitext-2/wiki.train.tokens.bigram_line | tr "\t" "~" | cut -d "~" -f2 > wikitext-2/wiki.train.tokens.bigram_line_sort
sort -k 1 wikitext-2/wiki.train.tokens.trigram_line | tr "\t" "~" | cut -d "~" -f2 > wikitext-2/wiki.train.tokens.trigram_line_sort
shuf wikitext-2/wiki.train.tokens.sent > wikitext-2/wiki.train.tokens.random
python bin/curriculum/dependency_parse.py wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.dep
sort -k 1 wikitext-2/wiki.train.tokens.dep | tr "\t" "~" | cut -d "~" -f2 > wikitext-2/wiki.train.tokens.dep_sort
python bin/curriculum/pos.py wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.pos
sort -k 1 wikitext-2/wiki.train.tokens.pos | tr "\t" "~" | cut -d "~" -f2 > wikitext-2/wiki.train.tokens.pos_sort
python bin/curriculum/sentence_length.py wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.len
sort -k 1 wikitext-2/wiki.train.tokens.len | tr "\t" "~" | cut -d "~" -f2 > wikitext-2/wiki.train.tokens.len_sort
python bin/curriculum/n-gram_entropy.py wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.unigram wikitext-2/wiki.train.tokens.bigram wikitext-2/wiki.train.tokens.trigram
sort -k 1 wikitext-2/wiki.train.tokens.unigram | tr "\t" "~" | cut -d "~" -f2 > wikitext-2/wiki.train.tokens.unigram_sort
sort -k 1 wikitext-2/wiki.train.tokens.bigram | tr "\t" "~" | cut -d "~" -f2 > wikitext-2/wiki.train.tokens.bigram_sort
sort -k 1 wikitext-2/wiki.train.tokens.trigram | tr "\t" "~" | cut -d "~" -f2 > wikitext-2/wiki.train.tokens.trigram_sort
