
import argparse

import numpy as np

from bilm.training import train_curriculum, load_vocab
from bilm.data import BidirectionalLMDataset

vocab = load_vocab('wikitext-2/vocab.txt', 50)
data = BidirectionalLMDataset('dummy.txt', vocab, test=False, shuffle_on_load=False, curriculum=True, num_steps = 20) # we dont shuffle since our curriculum generator shuffles
data_gen = data.curr_iter_batches(2, 0.01, .005)
print("Data done loading starting exp")
for batch_no, batch in enumerate(data_gen, start=1):
    input(batch_no)
    print(batch)
    break


data = BidirectionalLMDataset('wikitext-2/wiki.valid.tokens.sent', vocab, test=False, shuffle_on_load=False)
data_gen = data.iter_batches(2, 20)
for batch_no, batch in enumerate(data_gen, start=1):
    input(batch_no)
    print(batch)
    break
