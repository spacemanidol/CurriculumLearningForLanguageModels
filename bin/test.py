
import argparse

import numpy as np

from bilm.training import train_curriculum, load_vocab
from bilm.data import BidirectionalLMDataset

vocab = load_vocab('wikitext-2/vocab.txt', 50)
data = BidirectionalLMDataset('wikitext-2/wiki.valid.tokens.sent', vocab, test=False, shuffle_on_load=False) # we dont shuffle since our curriculum generator shuffles
data_gen = data.curr_iter_batches(10 * 3, 20, 0.01, .005 , 9439)
print("Data done loading starting exp")
for batch_no, batch in enumerate(data_gen, start=1):
    input(batch_no)
