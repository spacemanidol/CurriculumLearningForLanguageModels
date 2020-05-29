python bin/train_elmo_curriculum.py --save_dir models/curriculum/2/baseline/ --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.sent --train_tokens wikitext2 --initial_competence 1.0
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/2/baseline/ > Results/curriculum/2/baseline_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/2/baseline/ > Results/curriculum/2/baseline_onwikitext-103_valid.txt

python bin/train_elmo_curriculum.py --save_dir models/curriculum/2/pos --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.pos_sort --train_tokens wikitext2 --initial_competence 0.1 --competence_increment 0.0004 > Results/curriculum/2/postrain.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/2/pos > Results/curriculum/2/pos_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/2/pos > Results/curriculum/2/pos_onwikitext-103_valid.txt

python bin/train_elmo_curriculum.py --save_dir models/curriculum/2/dep --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.dep_sort --train_tokens wikitext2 --initial_competence 0.1 --competence_increment 0.0004 > Results/curriculum/2/deptrain.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/2/dep > Results/curriculum/2/dep_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/2/dep > Results/curriculum/2/dep_onwikitext-103_valid.txt

python bin/train_elmo_curriculum.py --save_dir models/curriculum/2/len --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.len_sort --train_tokens wikitext2 --initial_competence 0.1 --competence_increment 0.0004 > Results/curriculum/2/lentrain.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/2/len > Results/curriculum/2/len_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/2/len > Results/curriculum/2/len_onwikitext-103_valid.txt

python bin/train_elmo_curriculum.py --save_dir models/curriculum/2/random --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.random_sort --train_tokens wikitext2 --initial_competence 0.1 --competence_increment 0.0004 > Results/curriculum/2/randomtrain.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/2/random > Results/curriculum/2/random_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/2/random > Results/curriculum/2/random_onwikitext-103_valid.txt

python bin/train_elmo_curriculum.py --save_dir models/curriculum/2/trigram --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.tri_sort --train_tokens wikitext2 --initial_competence 0.1 --competence_increment 0.0004 > Results/curriculum/2/tritrain.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/2/trigram > Results/curriculum/2/tri_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/2/trigram > Results/curriculum/2/tri_onwikitext-103_valid.txt

python bin/train_elmo_curriculum.py --save_dir models/curriculum/2/bigram --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.bi_sort --train_tokens wikitext2 --initial_competence 0.1 --competence_increment 0.0004 > Results/curriculum/2/bitrain.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/2/bigram > Results/curriculum/2/bi_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/2/bigram > Results/curriculum/2/bi_onwikitext-103_valid.txt

python bin/train_elmo_curriculum.py --save_dir models/curriculum/2/unigram --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.uni_sort --train_tokens wikitext2 --initial_competence 0.1 --competence_increment 0.0004 > Results/curriculum/2/unitrain.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/2/unigram > Results/curriculum/2/uni_onwikitext-2_valid.txt
python bin/run_test.py --vocab_file wikitext-2/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/2/unigram > Results/curriculum/2/uni_onwikitext-103_valid.txt


python bin/dump_weights.py --save_dir models/curriculum/2/baseline --outfile models/curriculum/2/baseline/weights.hdf5
python bin/dump_weights.py --save_dir models/curriculum/2/dep --outfile models/curriculum/2/dep/weights.hdf5
python bin/dump_weights.py --save_dir models/curriculum/2/pos --outfile models/curriculum/2/pos/weights.hdf5
python bin/dump_weights.py --save_dir models/curriculum/2/unigram --outfile models/curriculum/2/unigram/weights.hdf5
python bin/dump_weights.py --save_dir models/curriculum/2/bigram --outfile models/curriculum/2/bigram/weights.hdf5
python bin/dump_weights.py --save_dir models/curriculum/2/trigram --outfile models/curriculum/2/trigram/weights.hdf5
python bin/dump_weights.py --save_dir models/curriculum/2/len --outfile models/curriculum/2/len/weights.hdf5
python bin/dump_weights.py --save_dir models/curriculum/2/random --outfile models/curriculum/2/random/weights.hdf5

