
import argparse

import numpy as np

from bilm.training import train, test, load_options_latest_checkpoint, load_vocab
from bilm.data import BidirectionalLMDataset


def main(args):
    vocab = load_vocab(args.vocab_file, args.vocab_min_occur)
    train_tokens = 768648884 #(this for 1B Word Benchmark)
    if args.train_tokens == 'wikitext2':
        train_tokens = 2051910 *1 #Enwiki2
    elif args.train_tokens == 'wikitext103':
        train_tokens = 101425658*3 #wikitext-103
    options = {
     'bidirectional': True,
     'char_cnn': {'activation': 'relu',
      'embedding': {'dim': 16},
      'filters': [[1, 32],
       [2, 32],
       [3, 64],
       [4, 128],
       [5, 256],
       [6, 512],
       [7, 1024]],
      'max_characters_per_token': 50,
      'n_characters': 261,
      'n_highway': 2},
     'dropout': 0.1,
     'lstm': {
      'cell_clip': 3,
      'dim': 4096,
      'n_layers': 2,
      'proj_clip': 3,
      'projection_dim': 512,
      'use_skip_connections': True},
     'all_clip_norm_val': 10.0,
     'n_epochs': 10,
     'n_train_tokens': train_tokens,
     'batch_size': args.train_batch_size,
     'n_tokens_vocab': vocab.size,
     'unroll_steps': 20,
     'n_negative_samples_batch': 8192,
    }

    prefix = args.train_prefix
    train_data = BidirectionalLMDataset(prefix, vocab, test=False, shuffle_on_load=True)

    tf_save_dir = args.save_dir
    tf_log_dir = args.save_dir
    train(options, train_data, args.n_gpus, tf_save_dir, tf_log_dir)

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--save_dir', help='Location of checkpoint files')
    parser.add_argument('--vocab_min_occur',type=int, default=50, help='Min occurrence of word in vocab')
    parser.add_argument('--vocab_file', default='wikitext-103/vocab.txt', help='Vocabulary file')
    parser.add_argument('--train_prefix', default='wikitext-103/wiki.train.tokens', help='Prefix for train files')
    parser.add_argument('--train_tokens', default = 'wikitext103', help='Choose training tokens size')
    parser.add_argument('--n_gpus',type=int, default=3, help='Number of GPUS')
    parser.add_argument('--train_batch_size', type=int, default=128,help='Test Batch size')
    args = parser.parse_args()
    main(args)

