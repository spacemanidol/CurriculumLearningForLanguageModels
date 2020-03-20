#Download Models and Data
mkdir models
cd models
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/vocab-2016-09-10.txt
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x4096_512_2048cnn_2xhighway/elmo_2x4096_512_2048cnn_2xhighway_options.json
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x2048_256_2048cnn_1xhighway/elmo_2x2048_256_2048cnn_1xhighway_options.json
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x1024_128_2048cnn_1xhighway/elmo_2x1024_128_2048cnn_1xhighway_options.json
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x1024_128_2048cnn_1xhighway/elmo_2x1024_128_2048cnn_1xhighway_weights.hdf5
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x2048_256_2048cnn_1xhighway/elmo_2x2048_256_2048cnn_1xhighway_weights.hdf5
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x4096_512_2048cnn_2xhighway/elmo_2x4096_512_2048cnn_2xhighway_weights.hdf5
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x4096_512_2048cnn_2xhighway_5.5B/elmo_2x4096_512_2048cnn_2xhighway_5.5B_weights.hdf5
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x4096_512_2048cnn_2xhighway_5.5B/elmo_2x4096_512_2048cnn_2xhighway_5.5B_options.json
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
python make_vocab.py wikitext-103/wikitext.tokens wikitext-103/vocab.txt
python make_vocab.py wikitext-2/wikitext.tokens wikitext-2/vocab.txt

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

source user_config.sh; python main.py --config expglue.conf --overrides "elmo_weight_file_
path=/home/spacemanidol/ProgressiveLanguageLearning/models/elmo_2x4096_512_2048cnn_2xhighway_weights.hdf5"

export CUDA_VISIBLE_DEVICES=1,2
python3 bin/train_elmo.py --train_prefix='wikitext-2/wiki.train.tokens' --vocab_file wikitext-2/vocab.txt --save_dir 'models/standardTrainOnWiki2'
python3 bin/restart.py --train_prefix='wikitext-2/wiki.train.tokens' --vocab_file wikitext-2/vocab.txt --save_dir 'models/standardTrainOnWiki2'  
export CUDA_VISIBLE_DEVICES=1
python3 bin/run_test.py --test_prefix='wikitext-103/wiki.test.tokens' --vocab_file wikitext-2/vocab.txt --save_dir 'models/standardTrainOnWiki2' 
python3 bin/dump --outputfile --save_dir 'models/standardTrainOnWiki2'  


export CUDA_VISIBLE_DEVICES=0,2
python3 bin/train_elmo.py --train_prefix='wikitext-103/wiki.train.tokens' --vocab_file wikitext-103/vocab.txt --save_dir 'models/standardTrainOnWiki103'
python3 bin/restart.py --train_prefix='wikitext-103/wiki.train.tokens' --vocab_file wikitext-103/vocab.txt --save_dir 'models/standardTrainOnWiki103'  
export CUDA_VISIBLE_DEVICES=1
python3 bin/run_test.py --test_prefix='wikitext-103/wiki.test.tokens' --vocab_file wikitext-103/vocab.txt --save_dir 'models/standardTrainOnWiki103' 
python3 bin/dump --outputfile --save_dir 'models/standardTrainOnWiki103'  



Perplexity Contexts Wikitext-103 https://www.paperswithcode.com/sota/language-modelling-on-wikitext-103
Megatron-LM 10.8
GPT-2 FULL 17.4
GPT-2 Large 22.05
GPT-2 Small 37.50
BEST LSTM 29.2

Perplexity Contexts Wikitext-2 https://www.paperswithcode.com/sota/language-modelling-on-wikitext-2
GPT-2 18.34

