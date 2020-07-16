#Download Models and Data
mkdir models
cd models
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/vocab-2016-09-10.txt
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x4096_512_2048cnn_2xhighway/elmo_2x4096_512_2048cnn_2xhighway_options.json
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x4096_512_2048cnn_2xhighway/elmo_2x4096_512_2048cnn_2xhighway_weights.hdf5

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
conda install -c anaconda tensorflow-gpu=1.2.1 h5py spacy
python -m spacy download en_core_web_lg
python -m unittest discover tests/
export CUDA_VISIBLE_DEVICES=0,1,2,3
python bin/make_vocab.py wikitext-103/wikitext.tokens wikitext-103/vocab.txt
python bin/make_vocab.py wikitext-2/wikitext.tokens wikitext-2/vocab.txt
python bin/make_sentence.py wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.sent
python bin/make_sentence.py wikitext-103/wiki.valid.tokens wikitext-103/wiki.valid.tokens.sent
python bin/make_sentence.py wikitext-103/wiki.test.tokens wikitext-103/wiki.test.tokens.sent
python bin/make_sentence.py wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.sent
python bin/make_sentence.py wikitext-2/wiki.test.tokens wikitext-2/wiki.test.tokens.sent
python bin/make_sentence.py wikitext-2/wiki.valid.tokens wikitext-2/wiki.valid.tokens.sent

# Generate Corpus level Curriculum and Train baseline and others


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

#Glue Scores
#Elmo Pretrained weights
source user_config.sh 
python main.py --config default.conf --overrides "elmo_weight_file_path=/home/spacemanidol/ProgressiveLanguageLearning/models/elmo_2x4096_512_2048cnn_2xhighway_weights.hdf5"

