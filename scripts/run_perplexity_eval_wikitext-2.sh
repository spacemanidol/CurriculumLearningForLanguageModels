python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/2/baseline/ > Results/curriculum/2/baseline_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/2/baseline/ > Results/curriculum/2/baseline_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens --save_dir models/curriculum/2/baseline/ > Results/curriculum/2/baseline_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculum/2/baseline/ > Results/curriculum/2/baseline_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/2/pos > Results/curriculum/2/pos_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/2/pos > Results/curriculum/2/pos_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculum/2/pos > Results/curriculum/2/pos_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculum/2/pos > Results/curriculum/2/pos_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/2/dep > Results/curriculum/2/dep_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/2/dep > Results/curriculum/2/dep_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculum/2/dep > Results/curriculum/2/dep_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculum/2/dep > Results/curriculum/2/dep_onwikitext-103_valid_line.txt


python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/2/len > Results/curriculum/2/len_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/2/len > Results/curriculum/2/len_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculum/2/len > Results/curriculum/2/len_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculum/2/len > Results/curriculum/2/len_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/2/random > Results/curriculum/2/random_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/2/random > Results/curriculum/2/random_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculum/2/random > Results/curriculum/2/random_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculum/2/random > Results/curriculum/2/random_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/2/trigram > Results/curriculum/2/tri_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/2/trigram > Results/curriculum/2/tri_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculum/2/trigram > Results/curriculum/2/tri_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculum/2/trigram > Results/curriculum/2/tri_onwikitext-103_valid_line.txt


python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/2/bigram > Results/curriculum/2/bi_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/2/bigram > Results/curriculum/2/bi_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculum/2/bigram > Results/curriculum/2/bi_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculum/2/bigram > Results/curriculum/2/bi_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/2/unigram > Results/curriculum/2/uni_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/2/unigram > Results/curriculum/2/uni_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens --save_dir models/curriculum/2/unigram > Results/curriculum/2/uni_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculum/2/unigram > Results/curriculum/2/uni_onwikitext-103_valid_line.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculumline/2/baseline/ > Results/curriculumline/2/baseline_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculumline/2/baseline/ > Results/curriculumline/2/baseline_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens --save_dir models/curriculumline/2/baseline/ > Results/curriculumline/2/baseline_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculumline/2/baseline/ > Results/curriculumline/2/baseline_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculumline/2/pos > Results/curriculumline/2/pos_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculumline/2/pos > Results/curriculumline/2/pos_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculumline/2/pos > Results/curriculumline/2/pos_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculumline/2/pos > Results/curriculumline/2/pos_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculumline/2/dep > Results/curriculumline/2/dep_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculumline/2/dep > Results/curriculumline/2/dep_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculumline/2/dep > Results/curriculumline/2/dep_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculumline/2/dep > Results/curriculumline/2/dep_onwikitext-103_valid_line.txt


python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculumline/2/len > Results/curriculumline/2/len_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculumline/2/len > Results/curriculumline/2/len_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculumline/2/len > Results/curriculumline/2/len_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculumline/2/len > Results/curriculumline/2/len_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculumline/2/random > Results/curriculumline/2/random_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculumline/2/random > Results/curriculumline/2/random_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculumline/2/random > Results/curriculumline/2/random_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculumline/2/random > Results/curriculumline/2/random_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculumline/2/trigram > Results/curriculumline/2/tri_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculumline/2/trigram > Results/curriculumline/2/tri_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculumline/2/trigram > Results/curriculumline/2/tri_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculumline/2/trigram > Results/curriculumline/2/tri_onwikitext-103_valid_line.txt


python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculumline/2/bigram > Results/curriculumline/2/bi_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculumline/2/bigram > Results/curriculumline/2/bi_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculumline/2/bigram > Results/curriculumline/2/bi_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculumline/2/bigram > Results/curriculumline/2/bi_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculumline/2/unigram > Results/curriculumline/2/uni_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculumline/2/unigram > Results/curriculumline/2/uni_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens --save_dir models/curriculumline/2/unigram > Results/curriculumline/2/uni_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculumline/2/unigram > Results/curriculumline/2/uni_onwikitext-103_valid_line.txt

