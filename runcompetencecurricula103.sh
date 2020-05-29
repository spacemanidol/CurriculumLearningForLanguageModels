python bin/train_elmo_curriculum.py --save_dir models/curriculum/103/baseline/ --vocab_file wikitext-103/vocab.txt --train_prefix wikitext-103/wiki.train.tokens.sent --train_tokens wikitext103 --initial_competence 1.0
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/103/baseline/ > Results/curriculum/103/baseline_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/103/baseline/ > Results/curriculum/103/baseline_onwikitext-2_valid.txt

python bin/train_elmo_curriculum.py --save_dir models/curriculum/103/pos --vocab_file wikitext-103/vocab.txt --train_prefix wikitext-103/wiki.train.tokens.pos_sort --train_tokens wikitext103 --initial_competence 0.1 --competence_increment 0.0004 > Results/curriculum/103/postrain.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/103/pos > Results/curriculum/103/pos_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/103/pos > Results/curriculum/103/pos_onwikitext-2_valid.txt

python bin/train_elmo_curriculum.py --save_dir models/curriculum/103/dep --vocab_file wikitext-103/vocab.txt --train_prefix wikitext-103/wiki.train.tokens.dep_sort --train_tokens wikitext103 --initial_competence 0.1 --competence_increment 0.0004 > Results/curriculum/103/deptrain.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/103/dep > Results/curriculum/103/dep_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/103/dep > Results/curriculum/103/dep_onwikitext-2_valid.txt

python bin/train_elmo_curriculum.py --save_dir models/curriculum/103/len --vocab_file wikitext-103/vocab.txt --train_prefix wikitext-103/wiki.train.tokens.len_sort --train_tokens wikitext103 --initial_competence 0.1 --competence_increment 0.0004 > Results/curriculum/103/lentrain.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/103/len > Results/curriculum/103/len_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/103/len > Results/curriculum/103/len_onwikitext-2_valid.txt

python bin/train_elmo_curriculum.py --save_dir models/curriculum/103/random --vocab_file wikitext-103/vocab.txt --train_prefix wikitext-103/wiki.train.tokens.random_sort --train_tokens wikitext103 --initial_competence 0.1 --competence_increment 0.0004 > Results/curriculum/103/randomtrain.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/103/random > Results/curriculum/103/random_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/103/random > Results/curriculum/103/random_onwikitext-2_valid.txt

python bin/train_elmo_curriculum.py --save_dir models/curriculum/103/trigram --vocab_file wikitext-103/vocab.txt --train_prefix wikitext-103/wiki.train.tokens.tri_sort --train_tokens wikitext103 --initial_competence 0.1 --competence_increment 0.0004 > Results/curriculum/103/tritrain.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/103/trigram > Results/curriculum/103/tri_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/103/trigram > Results/curriculum/103/tri_onwikitext-2_valid.txt

python bin/train_elmo_curriculum.py --save_dir models/curriculum/103/bigram --vocab_file wikitext-103/vocab.txt --train_prefix wikitext-103/wiki.train.tokens.bi_sort --train_tokens wikitext103 --initial_competence 0.1 --competence_increment 0.0004 > Results/curriculum/103/bitrain.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/103/bigram > Results/curriculum/103/bi_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/103/bigram > Results/curriculum/103/bi_onwikitext-2_valid.txt

python bin/train_elmo_curriculum.py --save_dir models/curriculum/103/unigram --vocab_file wikitext-103/vocab.txt --train_prefix wikitext-103/wiki.train.tokens.uni_sort --train_tokens wikitext103 --initial_competence 0.1 --competence_increment 0.0004 > Results/curriculum/103/unitrain.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-103/wiki.valid.tokens.sent  --save_dir models/curriculum/103/unigram > Results/curriculum/103/uni_onwikitext-103_valid.txt
python bin/run_test.py --vocab_file wikitext-103/vocab.txt --test_prefix wikitext-2/wiki.valid.tokens.sent  --save_dir models/curriculum/103/unigram > Results/curriculum/103/uni_onwikitext-2_valid.txt


python bin/dump_weights.py --save_dir models/curriculum/103/baseline --outfile models/curriculum/103/baseline/weights.hdf5
python bin/dump_weights.py --save_dir models/curriculum/103/dep --outfile models/curriculum/103/dep/weights.hdf5
python bin/dump_weights.py --save_dir models/curriculum/103/pos --outfile models/curriculum/103/pos/weights.hdf5
python bin/dump_weights.py --save_dir models/curriculum/103/unigram --outfile models/curriculum/103/unigram/weights.hdf5
python bin/dump_weights.py --save_dir models/curriculum/103/bigram --outfile models/curriculum/103/bigram/weights.hdf5
python bin/dump_weights.py --save_dir models/curriculum/103/trigram --outfile models/curriculum/103/trigram/weights.hdf5
python bin/dump_weights.py --save_dir models/curriculum/103/len --outfile models/curriculum/103/len/weights.hdf5
python bin/dump_weights.py --save_dir models/curriculum/103/random --outfile models/curriculum/103/random/weights.hdf5

