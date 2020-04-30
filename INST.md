#Download Models and Data
mkdir models
cd models
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/vocab-2016-09-10.txt
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x4096_512_2048cnn_2xhighway/elmo_2x4096_512_2048cnn_2xhighway_options.json
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x4096_512_2048cnn_2xhighway/elmo_2x4096_512_2048cnn_2xhighway_weights.hdf5
#wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x2048_256_2048cnn_1xhighway/elmo_2x2048_256_2048cnn_1xhighway_options.json
#wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x1024_128_2048cnn_1xhighway/elmo_2x1024_128_2048cnn_1xhighway_options.json
#wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x1024_128_2048cnn_1xhighway/elmo_2x1024_128_2048cnn_1xhighway_weights.hdf5
#wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x2048_256_2048cnn_1xhighway/elmo_2x2048_256_2048cnn_1xhighway_weights.hdf5
#wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x4096_512_2048cnn_2xhighway_5.5B/elmo_2x4096_512_2048cnn_2xhighway_5.5B_weights.hdf5
#wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x4096_512_2048cnn_2xhighway_5.5B/elmo_2x4096_512_2048cnn_2xhighway_5.5B_options.json

#Download WikiText Data
cd ..
#from https://blog.einstein.ai/the-wikitext-long-term-dependency-language-modeling-dataset/
wget https://s3.amazonaws.com/research.metamind.io/wikitext/wikitext-103-v1.zip
unzip wikitext-103-v1.zip
cd wikitext-103
cat wiki.train.tokens wiki.valid.tokens wiki.test.tokens > wikitext.tokens
cd ..
wget https://s3.amazonaws.com/research.metamind.io/wikitext/wikitext-2-v1.zip
unzip wikitext-2-v1.zip
cd wikitext-2
cat wiki.train.tokens wiki.valid.tokens wiki.test.tokens > wikitext.tokens
cd ..
rm wikitext-103-v1.zip
rm wikitext-2-v1.zip

#Setup
conda create -n ProgressiveTraining python=3.6 
conda activate ProgressiveTraining
conda install -c anaconda tensorflow-gpu=1.2.1 h5py
python -m unittest discover tests/
export CUDA_VISIBLE_DEVICES=0,1,2
python make_vocab.py wikitext-103/wikitext.tokens wikitext-103/vocab.txt
python make_vocab.py wikitext-2/wikitext.tokens wikitext-2/vocab.txt
python make_sentence.py wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.sent
python make_sentence.py wikitext-103/wiki.valid.tokens wikitext-103/wiki.valid.tokens.sent
python make_sentence.py wikitext-103/wiki.test.tokens wikitext-103/wiki.test.tokens.sent
python make_sentence.py wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.sent
python make_sentence.py wikitext-2/wiki.test.tokens wikitext-2/wiki.test.tokens.sent
python make_sentence.py wikitext-2/wiki.valid.tokens wikitext-2/wiki.valid.tokens.sent

# Generate Corpus level Curriculum
enwiki-10325,00050,00075,000100,000150,000250,000267,735
python make_vocab_based_curriculum.py wikitext-103/vocab.txt wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.25k 25000
python make_vocab_based_curriculum.py wikitext-103/vocab.txt wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.50k 50000
python make_vocab_based_curriculum.py wikitext-103/vocab.txt wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.75k 75000
python make_vocab_based_curriculum.py wikitext-103/vocab.txt wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.100k 100000
python make_vocab_based_curriculum.py wikitext-103/vocab.txt wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.150k 150000
python make_vocab_based_curriculum.py wikitext-103/vocab.txt wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.250k 250000
python make_vocab_based_curriculum.py wikitext-2/vocab.txt wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.5k 5000
python make_vocab_based_curriculum.py wikitext-2/vocab.txt wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.10k 10000
python make_vocab_based_curriculum.py wikitext-2/vocab.txt wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.15k 15000
python make_vocab_based_curriculum.py wikitext-2/vocab.txt wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.20k 20000
python make_vocab_based_curriculum.py wikitext-2/vocab.txt wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.25k 25000
python make_vocab_based_curriculum.py wikitext-2/vocab.txt wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.30k 30000
# Train Baselines 
## Wikitext-2 Basic

# Generate Competence Based Curriculum 
## Wikitext 2 Curriculum
python bin/train_elmo_1epoch.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.5k --train_tokens wikitext
python bin/run_test.py --save_dir models/standard/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens | results.txt
python bin/run_test.py --save_dir models/standard/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-103/wiki.test.tokens
python bin/restart.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.10k
python bin/run_test.py --save_dir models/standard/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens
python bin/run_test.py --save_dir models/standard/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-103/wiki.test.tokens
python bin/restart.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.15k
python bin/run_test.py --save_dir models/standard/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens
python bin/run_test.py --save_dir models/standard/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-103/wiki.test.tokens
python bin/restart.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.20k
python bin/run_test.py --save_dir models/standard/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens
python bin/run_test.py --save_dir models/standard/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-103/wiki.test.tokens
python bin/restart.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.25k
python bin/run_test.py --save_dir models/standard/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens
python bin/run_test.py --save_dir models/standard/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-103/wiki.test.tokens
python bin/restart.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens.30k
python bin/run_test.py --save_dir models/standard/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens
python bin/run_test.py --save_dir models/standard/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-103/wiki.test.tokens
python bin/restart.py --save_dir models/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens
python bin/run_test.py --save_dir models/standard/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens
python bin/run_test.py --save_dir models/standard/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-103/wiki.test.tokens
## Wikitext 2 Baseline
python bin/train_elmo_1epoch.py --save_dir models/corpuscurricula/2baseline --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens --train_tokens wikitext
python bin/restart.py --save_dir models/corpuscurricula/2baseline --vocab_file wikitext-2/vocab.txt --train_prefix wikitext-2/wiki.train.tokens
python bin/run_test.py --save_dir models/standard/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-2/wiki.test.tokens
python bin/run_test.py --save_dir models/standard/corpuscurricula/2 --vocab_file wikitext-2/vocab.txt  --test_prefix wikitext-103/wiki.test.tokens

#Setup Jiant
cd .. 
git clone --branch v1.3.1  --recursive https://github.com/nyu-mll/jiant.git jiant
git checkout tags/v1.3.1 -b 1.3.1_master
git submodule update --init --recursive
conda env create -f environment.yml
conda activate jiant
python -m spacy download en
python -m nltk.downloader perluniprops nonbreaking_prefixes punkt
python scripts/download_glue_data.py --data_dir ../Data/glue --tasks all
python scripts/download_superglue_data.py --data_dir ../Data/superglue --tasks all

#Glue Scores
#Elmo Pretrained weights
source user_config.sh; python main.py --config expglue.conf --overrides "elmo_weight_file_path=/home/spacemanidol/ProgressiveLanguageLearning/models/elmo_2x4096_512_2048cnn_2xhighway_weights.hdf5"