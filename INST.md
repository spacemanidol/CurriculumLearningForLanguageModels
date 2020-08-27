# Download Models and Data
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/vocab-2016-09-10.txt
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x4096_512_2048cnn_2xhighway/elmo_2x4096_512_2048cnn_2xhighway_options.json
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x4096_512_2048cnn_2xhighway/elmo_2x4096_512_2048cnn_2xhighway_weights.hdf5
mkdir models
cd models
mkdir curriculum curriculumline base corpuscurriculum
cd curriculum
mkdir 2 103
cd 2
mkdir baseline random unigram bigram trigram dep pos len
cd ../103
mkdir baseline random unigram bigram trigram dep pos len
cd ../../curriculumline
mkdir 2 103
cd 2
mkdir baseline random unigram bigram trigram dep pos len
cd ../103
mkdir baseline random unigram bigram trigram dep pos len
cd ../../corpuscurriculum
mkdir baseline-2 baseline-103 modified-2 modified-103
cd ../

# Download WikiText Data
cd ..
#from https://blog.einstein.ai/the-wikitext-long-term-dependency-language-modeling-dataset/
wget https://s3.amazonaws.com/research.metamind.io/wikitext/wikitext-103-v1.zip
wget https://s3.amazonaws.com/research.metamind.io/wikitext/wikitext-2-v1.zip
unzip wikitext-2-v1.zip
unzip wikitext-103-v1.zip
cat wikitext-103/wiki.train.tokens wikitext-103/wiki.valid.tokens wikitext-103/wiki.test.tokens > wikitext-103/wikitext.tokens
cat wikitext-2/wiki.train.tokens wikitext-2/wiki.valid.tokens wikitext-2/wiki.test.tokens > wikitext-2/wikitext.tokens
rm wikitext-103-v1.zip
rm wikitext-2-v1.zip

# Setup Progressive LM Repo
conda create -n ProgressiveTraining python=3.6 
conda activate ProgressiveTraining
conda install -c anaconda tensorflow-gpu=1.2.1 h5py spacy
python -m spacy download en_core_web_lg
python -m unittest discover tests/
export CUDA_VISIBLE_DEVICES=0,1,2


# Setup Jiant
cd .. 
git clone --branch v1.3.1  --recursive https://github.com/nyu-mll/jiant.git jiant
git checkout tags/v1.3.1 -b 1.3.1_master
git submodule update --init --recursive
conda env create -f environment.yml
conda activate jiant
python -m spacy download en
python -m nltk.downloader perluniprops nonbreaking_prefixes punkt
python scripts/download_glue_data.py --data_dir ../Data/ --tasks all
python bin/make_vocab.py wikitext-103/wikitext.tokens wikitext-103/vocab.txt
python bin/make_vocab.py wikitext-2/wikitext.tokens wikitext-2/vocab.txt
python bin/make_sentence.py wikitext-103/wiki.train.tokens wikitext-103/wiki.train.tokens.sent
python bin/make_sentence.py wikitext-103/wiki.valid.tokens wikitext-103/wiki.valid.tokens.sent
python bin/make_sentence.py wikitext-103/wiki.test.tokens wikitext-103/wiki.test.tokens.sent
python bin/make_sentence.py wikitext-2/wiki.train.tokens wikitext-2/wiki.train.tokens.sent
python bin/make_sentence.py wikitext-2/wiki.test.tokens wikitext-2/wiki.test.tokens.sent
python bin/make_sentence.py wikitext-2/wiki.valid.tokens wikitext-2/wiki.valid.tokens.sent

# Generate Corpus level Curriculum and competence curriculua, and train and run experiments
sh scripts/generate_competence_files.sh
sh scripts/runcorpuscurriculum-wiki103.sh	
sh scripts/runcorpuscurriculum-wiki2.sh	
sh scripts/train_curicula-wiki-103.sh
sh scripts/train_curicula-wiki-2.sh
sh scripts/run_perplexity_eval_wikitext-103.sh
sh scripts/run_perplexity_eval_wikitext-2.sh
sh scripts/dump_all_weights.sh

# Run Jiant
source jiant_config.sh 
python main.py --config default.conf --overrides "elmo_weight_file_path=/home/spacemanidol/ProgressiveLanguageLearning/models/elmo_2x4096_512_2048cnn_2xhighway_weights.hdf5"


tail -n 1 Results/wikitext/bengiostylecurriculum/wikitext-103/corpus_curr_wiki103_validperplexity_epoch* | tr 'FINSIHED!  AVERAGE PERPLEXITY = ' '~' | tr '~' 0

 python consume_glue.py Results/glueresults/elmocompetencewiki2baseline.txt