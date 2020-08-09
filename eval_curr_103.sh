python bin/train_elmo_curriculum.py --save_dir models/curriculum/103/baseline/ --train_prefix wikitext-103/wiki.train.tokens.sent --target_batches 18896 --initial_competence 1 --competence_increment 0
python bin/train_elmo_curriculum.py --save_dir models/curriculum/103/random/--train_prefix wikitext-103/wiki.train.tokens.random --target_batches 18896 --initial_competence 0.001 --competence_increment 8e-5
python bin/train_elmo_curriculum.py --save_dir models/curriculum/103/len/ --train_prefix wikitext-103/wiki.train.tokens.len_sort --target_batches 18896 --initial_competence 0.001 --competence_increment 8e-5
python bin/train_elmo_curriculum.py --save_dir models/curriculum/103/pos/ --train_prefix wikitext-103/wiki.train.tokens.pos_sort --target_batches 18896 --initial_competence 0.001 --competence_increment 8e-5
python bin/train_elmo_curriculum.py --save_dir models/curriculum/103/dep/ --train_prefix wikitext-103/wiki.train.tokens.dep_sort --target_batches 18896 --initial_competence 0.001 --competence_increment 8e-5
python bin/train_elmo_curriculum.py --save_dir models/curriculum/103/unigram/ --train_prefix wikitext-103/wiki.train.tokens.unigram_sort --target_batches 18896 --initial_competence 0.001 --competence_increment 8e-5
python bin/train_elmo_curriculum.py --save_dir models/curriculum/103/bigram/ --train_prefix wikitext-103/wiki.train.tokens.bigram_sort --target_batches 18896 --initial_competence 0.001 --competence_increment 8e-5
python bin/train_elmo_curriculum.py --save_dir models/curriculum/103/trigram/ --train_prefix wikitext-103/wiki.train.tokens.trigram_sort --target_batches 18896 --initial_competence 0.001 --competence_increment 8e-5


python bin/run_test.py --save_dir models/curriculum/103/baseline/ --test_prefix wikitext-2/wiki.valid.tokens.sent > Results/curriculum/103/baseline_wikitext2_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/103/baseline/ --test_prefix wikitext-2/wiki.valid.tokens > Results/curriculum/103/baseline_wikitext2_valid.txt

python bin/run_test.py --save_dir models/curriculum/103/baseline/ --test_prefix wikitext-103/wiki.valid.tokens.sent > Results/curriculum/103/baseline_wikitext103_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/103/baseline/ --test_prefix wikitext-103/wiki.valid.tokens > Results/curriculum/103/baseline_wikitext103_valid.txt

python bin/run_test.py --save_dir models/curriculum/103/dep/ --test_prefix wikitext-2/wiki.valid.tokens.sent > Results/curriculum/103/dep_wikitext2_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/103/dep/ --test_prefix wikitext-2/wiki.valid.tokens > Results/curriculum/103/dep_wikitext2_valid.txt

python bin/run_test.py --save_dir models/curriculum/103/dep/ --test_prefix wikitext-103/wiki.valid.tokens.sent > Results/curriculum/103/dep_wikitext103_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/103/dep/ --test_prefix wikitext-103/wiki.valid.tokens > Results/curriculum/103/dep_wikitext103_valid.txt

python bin/run_test.py --save_dir models/curriculum/103/pos/ --test_prefix wikitext-2/wiki.valid.tokens.sent > Results/curriculum/103/pos_wikitext2_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/103/pos/ --test_prefix wikitext-2/wiki.valid.tokens > Results/curriculum/103/pos_wikitext2_valid.txt

python bin/run_test.py --save_dir models/curriculum/103/pos/ --test_prefix wikitext-103/wiki.valid.tokens.sent > Results/curriculum/103/pos_wikitext103_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/103/pos/ --test_prefix wikitext-103/wiki.valid.tokens > Results/curriculum/103/pos_wikitext103_valid.txt

python bin/run_test.py --save_dir models/curriculum/103/len/ --test_prefix wikitext-2/wiki.valid.tokens.sent > Results/curriculum/103/len_wikitext2_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/103/len/ --test_prefix wikitext-2/wiki.valid.tokens > Results/curriculum/103/len_wikitext2_valid.txt

python bin/run_test.py --save_dir models/curriculum/103/len/ --test_prefix wikitext-103/wiki.valid.tokens.sent > Results/curriculum/103/len_wikitext103_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/103/len/ --test_prefix wikitext-103/wiki.valid.tokens > Results/curriculum/103/len_wikitext103_valid.txt

python bin/run_test.py --save_dir models/curriculum/103/random/ --test_prefix wikitext-2/wiki.valid.tokens.sent > Results/curriculum/103/random_wikitext2_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/103/random/ --test_prefix wikitext-2/wiki.valid.tokens > Results/curriculum/103/random_wikitext2_valid.txt

python bin/run_test.py --save_dir models/curriculum/103/random/ --test_prefix wikitext-103/wiki.valid.tokens.sent > Results/curriculum/103/random_wikitext103_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/103/random/ --test_prefix wikitext-103/wiki.valid.tokens > Results/curriculum/103/random_wikitext103_valid.txt


python bin/run_test.py --save_dir models/curriculum/103/unigram/ --test_prefix wikitext-2/wiki.valid.tokens.sent > Results/curriculum/103/unigram_wikitext2_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/103/unigram/ --test_prefix wikitext-2/wiki.valid.tokens > Results/curriculum/103/unigram_wikitext2_valid.txt

python bin/run_test.py --save_dir models/curriculum/103/unigram/ --test_prefix wikitext-103/wiki.valid.tokens.sent > Results/curriculum/103/unigram_wikitext103_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/103/unigram/ --test_prefix wikitext-103/wiki.valid.tokens > Results/curriculum/103/unigram_wikitext103_valid.txt

python bin/run_test.py --save_dir models/curriculum/103/bigram/ --test_prefix wikitext-2/wiki.valid.tokens.sent > Results/curriculum/103/bigram_wikitext2_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/103/bigram/ --test_prefix wikitext-2/wiki.valid.tokens > Results/curriculum/103/bigram_wikitext2_valid.txt

python bin/run_test.py --save_dir models/curriculum/103/bigram/ --test_prefix wikitext-103/wiki.valid.tokens.sent > Results/curriculum/103/bigram_wikitext103_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/103/bigram/ --test_prefix wikitext-103/wiki.valid.tokens > Results/curriculum/103/bigram_wikitext103_valid.txt

python bin/run_test.py --save_dir models/curriculum/103/trigram/ --test_prefix wikitext-2/wiki.valid.tokens.sent > Results/curriculum/103/trigram_wikitext2_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/103/trigram/ --test_prefix wikitext-2/wiki.valid.tokens > Results/curriculum/103/trigram_wikitext2_valid.txt

python bin/run_test.py --save_dir models/curriculum/103/trigram/ --test_prefix wikitext-103/wiki.valid.tokens.sent > Results/curriculum/103/trigram_wikitext103_valid_sent.txt
python bin/run_test.py --save_dir models/curriculum/103/trigram/ --test_prefix wikitext-103/wiki.valid.tokens > Results/curriculum/103/trigram_wikitext103_valid.txt

c