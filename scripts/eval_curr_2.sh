python bin/train_elmo_curriculum.py --save_dir models/curriculum/2/baseline/ --train_prefix wikitext-2/wiki.train.tokens.sent --target_batches 18896 --initial_competence 1 --competence_increment 0
python bin/train_elmo_curriculum.py --save_dir models/curriculum/2/random/--train_prefix wikitext-2/wiki.train.tokens.random --target_batches 18896 --initial_competence 0.01 --competence_increment 4e-4
python bin/train_elmo_curriculum.py --save_dir models/curriculum/2/len/ --train_prefix wikitext-2/wiki.train.tokens.len_sort --target_batches 18896 --initial_competence 0.01 --competence_increment 4e-4
python bin/train_elmo_curriculum.py --save_dir models/curriculum/2/pos/ --train_prefix wikitext-2/wiki.train.tokens.pos_sort --target_batches 18896 --initial_competence 0.01 --competence_increment 4e-4
python bin/train_elmo_curriculum.py --save_dir models/curriculum/2/dep/ --train_prefix wikitext-2/wiki.train.tokens.dep_sort --target_batches 18896 --initial_competence 0.01 --competence_increment 4e-4
python bin/train_elmo_curriculum.py --save_dir models/curriculum/2/unigram/ --train_prefix wikitext-2/wiki.train.tokens.unigram_sort --target_batches 18896 --initial_competence 0.01 --competence_increment 4e-4
python bin/train_elmo_curriculum.py --save_dir models/curriculum/2/bigram/ --train_prefix wikitext-2/wiki.train.tokens.bigram_sort --target_batches 18896 --initial_competence 0.01 --competence_increment 4e-4
python bin/train_elmo_curriculum.py --save_dir models/curriculum/2/trigram/ --train_prefix wikitext-2/wiki.train.tokens.trigram_sort --target_batches 18896 --initial_competence 0.01 --competence_increment 4e-4

python bin/run_test.py --save_dir models/curriculum/2/baseline/ --test_prefix wikitext-2/wiki.valid.tokens.sent > Results/curriculum/2/baseline_wikitext2_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/2/baseline/ --test_prefix wikitext-2/wiki.valid.tokens > Results/curriculum/2/baseline_wikitext2_valid.txt

python bin/run_test.py --save_dir models/curriculum/2/baseline/ --test_prefix wikitext-103/wiki.valid.tokens.sent > Results/curriculum/2/baseline_wikitext103_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/2/baseline/ --test_prefix wikitext-103/wiki.valid.tokens > Results/curriculum/2/baseline_wikitext103_valid.txt

python bin/run_test.py --save_dir models/curriculum/2/dep/ --test_prefix wikitext-2/wiki.valid.tokens.sent > Results/curriculum/2/dep_wikitext2_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/2/dep/ --test_prefix wikitext-2/wiki.valid.tokens > Results/curriculum/2/dep_wikitext2_valid.txt

python bin/run_test.py --save_dir models/curriculum/2/dep/ --test_prefix wikitext-103/wiki.valid.tokens.sent > Results/curriculum/2/dep_wikitext103_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/2/dep/ --test_prefix wikitext-103/wiki.valid.tokens > Results/curriculum/2/dep_wikitext103_valid.txt

python bin/run_test.py --save_dir models/curriculum/2/pos/ --test_prefix wikitext-2/wiki.valid.tokens.sent > Results/curriculum/2/pos_wikitext2_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/2/pos/ --test_prefix wikitext-2/wiki.valid.tokens > Results/curriculum/2/pos_wikitext2_valid.txt

python bin/run_test.py --save_dir models/curriculum/2/pos/ --test_prefix wikitext-103/wiki.valid.tokens.sent > Results/curriculum/2/pos_wikitext103_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/2/pos/ --test_prefix wikitext-103/wiki.valid.tokens > Results/curriculum/2/pos_wikitext103_valid.txt

python bin/run_test.py --save_dir models/curriculum/2/len/ --test_prefix wikitext-2/wiki.valid.tokens.sent > Results/curriculum/2/len_wikitext2_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/2/len/ --test_prefix wikitext-2/wiki.valid.tokens > Results/curriculum/2/len_wikitext2_valid.txt

python bin/run_test.py --save_dir models/curriculum/2/len/ --test_prefix wikitext-103/wiki.valid.tokens.sent > Results/curriculum/2/len_wikitext103_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/2/len/ --test_prefix wikitext-103/wiki.valid.tokens > Results/curriculum/2/len_wikitext103_valid.txt

python bin/run_test.py --save_dir models/curriculum/2/random/ --test_prefix wikitext-2/wiki.valid.tokens.sent > Results/curriculum/2/random_wikitext2_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/2/random/ --test_prefix wikitext-2/wiki.valid.tokens > Results/curriculum/2/random_wikitext2_valid.txt

python bin/run_test.py --save_dir models/curriculum/2/random/ --test_prefix wikitext-103/wiki.valid.tokens.sent > Results/curriculum/2/random_wikitext103_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/2/random/ --test_prefix wikitext-103/wiki.valid.tokens > Results/curriculum/2/random_wikitext103_valid.txt


python bin/run_test.py --save_dir models/curriculum/2/unigram/ --test_prefix wikitext-2/wiki.valid.tokens.sent > Results/curriculum/2/unigram_wikitext2_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/2/unigram/ --test_prefix wikitext-2/wiki.valid.tokens > Results/curriculum/2/unigram_wikitext2_valid.txt

python bin/run_test.py --save_dir models/curriculum/2/unigram/ --test_prefix wikitext-103/wiki.valid.tokens.sent > Results/curriculum/2/unigram_wikitext103_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/2/unigram/ --test_prefix wikitext-103/wiki.valid.tokens > Results/curriculum/2/unigram_wikitext103_valid.txt


python bin/run_test.py --save_dir models/curriculum/2/bigram/ --test_prefix wikitext-2/wiki.valid.tokens.sent > Results/curriculum/2/bigram_wikitext2_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/2/bigram/ --test_prefix wikitext-2/wiki.valid.tokens > Results/curriculum/2/bigram_wikitext2_valid.txt

python bin/run_test.py --save_dir models/curriculum/2/bigram/ --test_prefix wikitext-103/wiki.valid.tokens.sent > Results/curriculum/2/bigram_wikitext103_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/2/bigram/ --test_prefix wikitext-103/wiki.valid.tokens > Results/curriculum/2/bigram_wikitext103_valid.txt


python bin/run_test.py --save_dir models/curriculum/2/trigram/ --test_prefix wikitext-2/wiki.valid.tokens.sent > Results/curriculum/2/trigram_wikitext2_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/2/trigram/ --test_prefix wikitext-2/wiki.valid.tokens > Results/curriculum/2/trigram_wikitext2_valid.txt

python bin/run_test.py --save_dir models/curriculum/2/trigram/ --test_prefix wikitext-103/wiki.valid.tokens.sent > Results/curriculum/2/trigram_wikitext103_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/2/trigram/ --test_prefix wikitext-103/wiki.valid.tokens > Results/curriculum/2/trigram_wikitext103_valid.txt