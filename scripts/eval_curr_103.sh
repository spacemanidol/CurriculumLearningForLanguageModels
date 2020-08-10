python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/103/baseline/ > Results/curriculum/103/baseline_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/103/baseline/ > Results/curriculum/103/baseline_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens --save_dir models/curriculum/103/baseline/ > Results/curriculum/103/baseline_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculum/103/baseline/ > Results/curriculum/103/baseline_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/103/pos > Results/curriculum/103/pos_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/103/pos > Results/curriculum/103/pos_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculum/103/pos > Results/curriculum/103/pos_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculum/103/pos > Results/curriculum/103/pos_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/103/dep > Results/curriculum/103/dep_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/103/dep > Results/curriculum/103/dep_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculum/103/dep > Results/curriculum/103/dep_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculum/103/dep > Results/curriculum/103/dep_onwikitext-103_valid_line.txt


python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/103/len > Results/curriculum/103/len_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/103/len > Results/curriculum/103/len_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculum/103/len > Results/curriculum/103/len_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculum/103/len > Results/curriculum/103/len_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/103/random > Results/curriculum/103/random_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/103/random > Results/curriculum/103/random_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculum/103/random > Results/curriculum/103/random_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculum/103/random > Results/curriculum/103/random_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/103/trigram > Results/curriculum/103/tri_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/103/trigram > Results/curriculum/103/tri_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculum/103/trigram > Results/curriculum/103/tri_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculum/103/trigram > Results/curriculum/103/tri_onwikitext-103_valid_line.txt


python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/103/bigram > Results/curriculum/103/bi_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/103/bigram > Results/curriculum/103/bi_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculum/103/bigram > Results/curriculum/103/bi_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculum/103/bigram > Results/curriculum/103/bi_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/103/unigram > Results/curriculum/103/uni_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/103/unigram > Results/curriculum/103/uni_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens --save_dir models/curriculum/103/unigram > Results/curriculum/103/uni_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculum/103/unigram > Results/curriculum/103/uni_onwikitext-103_valid_line.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculumline/103/baseline/ > Results/curriculumline/103/baseline_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculumline/103/baseline/ > Results/curriculumline/103/baseline_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens --save_dir models/curriculumline/103/baseline/ > Results/curriculumline/103/baseline_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculumline/103/baseline/ > Results/curriculumline/103/baseline_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculumline/103/pos > Results/curriculumline/103/pos_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculumline/103/pos > Results/curriculumline/103/pos_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculumline/103/pos > Results/curriculumline/103/pos_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculumline/103/pos > Results/curriculumline/103/pos_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculumline/103/dep > Results/curriculumline/103/dep_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculumline/103/dep > Results/curriculumline/103/dep_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculumline/103/dep > Results/curriculumline/103/dep_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculumline/103/dep > Results/curriculumline/103/dep_onwikitext-103_valid_line.txt


python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculumline/103/len > Results/curriculumline/103/len_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculumline/103/len > Results/curriculumline/103/len_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculumline/103/len > Results/curriculumline/103/len_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculumline/103/len > Results/curriculumline/103/len_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculumline/103/random > Results/curriculumline/103/random_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculumline/103/random > Results/curriculumline/103/random_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculumline/103/random > Results/curriculumline/103/random_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculumline/103/random > Results/curriculumline/103/random_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculumline/103/trigram > Results/curriculumline/103/tri_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculumline/103/trigram > Results/curriculumline/103/tri_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculumline/103/trigram > Results/curriculumline/103/tri_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculumline/103/trigram > Results/curriculumline/103/tri_onwikitext-103_valid_line.txt


python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculumline/103/bigram > Results/curriculumline/103/bi_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculumline/103/bigram > Results/curriculumline/103/bi_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens  --save_dir models/curriculumline/103/bigram > Results/curriculumline/103/bi_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculumline/103/bigram > Results/curriculumline/103/bi_onwikitext-103_valid_line.txt

python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculumline/103/unigram > Results/curriculumline/103/uni_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculumline/103/unigram > Results/curriculumline/103/uni_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens --save_dir models/curriculumline/103/unigram > Results/curriculumline/103/uni_onwikitext-2_valid_line.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens  --save_dir models/curriculumline/103/unigram > Results/curriculumline/103/uni_onwikitext-103_valid_line.txt
