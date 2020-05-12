python make_vocab_based_curriculum.py wikitext-2/vocab.txt wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.5k 5000
python make_vocab_based_curriculum.py wikitext-2/vocab.txt wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.10k 10000
python make_vocab_based_curriculum.py wikitext-2/vocab.txt wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.15k 15000
python make_vocab_based_curriculum.py wikitext-2/vocab.txt wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.20k 20000
python make_vocab_based_curriculum.py wikitext-2/vocab.txt wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.25k 25000
python make_vocab_based_curriculum.py wikitext-2/vocab.txt wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.30k 30000
python bin/train_elmo_1epoch.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.5k --train_tokens wikitext2 corpus_curr_wiki2_train5k.txt
python bin/run_test.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens > corpus_curr_wiki2_validperplexity_epoch1
python bin/restart.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.10k > corpus_curr_wiki2_train10k.txt
python bin/run_test.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens > corpus_curr_wiki2_validperplexity_epoch2
python bin/restart.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.15k > corpus_curr_wiki2_train15k.txt
python bin/run_test.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens > corpus_curr_wiki2_validperplexity_epoch3
python bin/restart.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.20k > corpus_curr_wiki2_train20k.txt
python bin/run_test.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens >  corpus_curr_wiki2_validperplexity_epoch4
python bin/restart.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.25k >  corpus_curr_wiki2_train25k.txt
python bin/run_test.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens > corpus_curr_wiki2_validperplexity_epoch5
python bin/restart.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.30k > corpus_curr_wiki2_train30k.txt
python bin/run_test.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens > corpus_curr_wiki2_validperplexity_epoch6
python bin/restart.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens > corpus_curr_wiki2_train-7.txt
python bin/run_test.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens > corpus_curr_wiki2_validperplexity_epoch7
python bin/restart.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens > corpus_curr_wiki2_train-8.txt
python bin/run_test.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens > corpus_curr_wiki2_validperplexity_epoch8
python bin/restart.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens > corpus_curr_wiki2_train-9.txt
python bin/run_test.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens > corpus_curr_wiki2_validperplexity_epoch9
python bin/restart.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens > corpus_curr_wiki2_train-10.txt
python bin/run_test.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens > corpus_curr_wiki2_validperplexity_epoch10
python bin/train_elmo_1epoch.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.5k --train_tokens wikitext2 baseline_corpus_curr_wiki2_train5k.txt
python bin/run_test.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens > baseline_corpus_curr_wiki2_validperplexity_epoch1
python bin/restart.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.10k > baseline_corpus_curr_wiki2_train10k.txt
python bin/run_test.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens > baseline_corpus_curr_wiki2_validperplexity_epoch2
python bin/restart.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.15k > baseline_corpus_curr_wiki2_train15k.txt
python bin/run_test.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens > baseline_corpus_curr_wiki2_validperplexity_epoch3
python bin/restart.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.20k > baseline_corpus_curr_wiki2_train20k.txt
python bin/run_test.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens >  baseline_corpus_curr_wiki2_validperplexity_epoch4
python bin/restart.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.25k >  baseline_corpus_curr_wiki2_train25k.txt
python bin/run_test.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens > baseline_corpus_curr_wiki2_validperplexity_epoch5
python bin/restart.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.30k > baseline_corpus_curr_wiki2_train30k.txt
python bin/run_test.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens > baseline_corpus_curr_wiki2_validperplexity_epoch6
python bin/restart.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens > baseline_corpus_curr_wiki2_train-7.txt
python bin/run_test.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens > baseline_corpus_curr_wiki2_validperplexity_epoch7
python bin/restart.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens > baseline_corpus_curr_wiki2_train-8.txt
python bin/run_test.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens > baseline_corpus_curr_wiki2_validperplexity_epoch8
python bin/restart.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens > baseline_corpus_curr_wiki2_train-9.txt
python bin/run_test.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens > baseline_corpus_curr_wiki2_validperplexity_epoch9
python bin/restart.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens > baseline_corpus_curr_wiki2_train-10.txt
python bin/run_test.py --save_dir models/standard/2/corpus_baseline --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens > baseline_corpus_curr_wiki2_validperplexity_epoch10

