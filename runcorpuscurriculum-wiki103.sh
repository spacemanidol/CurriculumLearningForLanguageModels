python make_vocab_based_curriculum.py wikitext-103/vocab.txt wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.50k 50000
python make_vocab_based_curriculum.py wikitext-103/vocab.txt wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.75k 75000
python make_vocab_based_curriculum.py wikitext-103/vocab.txt wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.100k 100000
python make_vocab_based_curriculum.py wikitext-103/vocab.txt wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.150k 150000
python make_vocab_based_curriculum.py wikitext-103/vocab.txt wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.250k 250000
python bin/train_elmo_1epoch.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt --train_prefix wikitext-103/wiki.train.tokens.25k --train_tokens wikitext2 corpus_curr_wiki103_train25k.txt
python bin/run_test.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt  --test_prefix wikitext-103/wiki.test.tokens > corpus_curr_wiki103_validperplexity_epoch1
python bin/restart.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt --train_prefix wikitext-103/wiki.train.tokens.50k > corpus_curr_wiki103_train50k.txt
python bin/run_test.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt  --test_prefix wikitext-103/wiki.test.tokens > corpus_curr_wiki103_validperplexity_epoch2
python bin/restart.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt --train_prefix wikitext-103/wiki.train.tokens.75k > corpus_curr_wiki103_train75k.txt
python bin/run_test.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt  --test_prefix wikitext-103/wiki.test.tokens > corpus_curr_wiki103_validperplexity_epoch3
python bin/restart.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt --train_prefix wikitext-103/wiki.train.tokens.100k > corpus_curr_wiki103_train100k.txt
python bin/run_test.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt  --test_prefix wikitext-103/wiki.test.tokens > corpus_curr_wiki103_validperplexity_epoch4
python bin/restart.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt --train_prefix wikitext-103/wiki.train.tokens.150k >  corpus_curr_wiki103_train150k.txt
python bin/run_test.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt  --test_prefix wikitext-103/wiki.test.tokens > corpus_curr_wiki103_validperplexity_epoch5
python bin/restart.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt --train_prefix wikitext-103/wiki.train.tokens.250k > corpus_curr_wiki103_train250k.txt
python bin/run_test.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt  --test_prefix wikitext-103/wiki.test.tokens > corpus_curr_wiki103_validperplexity_epoch6
python bin/restart.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt --train_prefix wikitext-103/wiki.train.tokens> corpus_curr_wiki103_trainFull7.txt
python bin/run_test.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt  --test_prefix wikitext-103/wiki.test.tokens > corpus_curr_wiki103_validperplexity_epoch7
python bin/restart.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt --train_prefix wikitext-103/wiki.train.tokens> corpus_curr_wiki103_trainFull8.txt
python bin/run_test.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt  --test_prefix wikitext-103/wiki.test.tokens > corpus_curr_wiki103_validperplexity_epoch8
python bin/restart.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt --train_prefix wikitext-103/wiki.train.tokens> corpus_curr_wiki103_trainFull9.txt
python bin/run_test.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt  --test_prefix wikitext-103/wiki.test.tokens > corpus_curr_wiki103_validperplexity_epoch9
python bin/restart.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt --train_prefix wikitext-103/wiki.train.tokens> corpus_curr_wiki103_trainFull10.txt
python bin/run_test.py --save_dir models/corpuscurricula/103 --vocab_file wikitext-103/vocab.txt  --test_prefix wikitext-103/wiki.test.tokens > corpus_curr_wiki103_validperplexity_epoch10
