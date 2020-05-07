

import argparse
import numpy as np

from bilm.training import train, load_options_latest_checkpoint, load_vocab
from bilm.data import LMDataset, BidirectionalLMDataset

def main(args):
    options, ckpt_file = load_options_latest_checkpoint(args.save_dir)

    if 'char_cnn' in options:
        max_word_length = options['char_cnn']['max_characters_per_token']
    else:
        max_word_length = None
    vocab = load_vocab(args.vocab_file, max_word_length)

    prefix = args.train_prefix

    kwargs = {
        'test': False,
        'shuffle_on_load': True,
    }

    if options.get('bidirectional'):
        data = BidirectionalLMDataset(prefix, vocab, **kwargs)
    else:
        data = LMDataset(prefix, vocab, **kwargs)

    tf_save_dir = args.save_dir
    tf_log_dir = args.save_dir

    options['n_epochs'] = 1
    train(options, data, args.n_gpus, tf_save_dir, tf_log_dir,restart_ckpt_file=ckpt_file)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--save_dir', help='Location of checkpoint files')
    parser.add_argument('--n_gpus',default=3, type=int)
    parser.add_argument('--vocab_file', default='wikitext-2/vocab.txt',help='Vocabulary file')
    parser.add_argument('--train_prefix', default='wikitext-2/wiki.train.tokens.txt',help='Prefix for train files')
    args = parser.parse_args()
    main(args)

