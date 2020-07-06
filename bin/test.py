
import argparse

import numpy as np

from bilm.training import train_curriculum, load_vocab
from bilm.data import BidirectionalLMDataset

vocab = load_vocab('wikitext-2/vocab.txt', 50)
data = BidirectionalLMDataset('dummy.txt', vocab, test=True, shuffle_on_load=False, curriculum=True, num_steps = 20)
data_gen = data.curr_iter_batches(2, 1, 0.0)
print("Data done loading starting exp")
for batch_no, batch in enumerate(data_gen, start=1):
    print(batch_no)
    print(batch['tokens_characters'].shape)
    print(batch['ignore'])
    print(batch['next_token_id'])
    print(batch['ignore'].shape)
    print(batch['token_ids'].shape)
    print(batch['next_token_id'].shape) 
    print(batch['token_ids_reverse'].shape)
    print(batch['tokens_characters_reverse'].shape)
    break


data = BidirectionalLMDataset('dummy.txt', vocab, test=False, shuffle_on_load=False)
data_gen = data.iter_batches(2, 20)
for batch_no, batch in enumerate(data_gen, start=1):
    print(batch_no)
    print(batch['tokens_characters'].shape)
    print(batch['token_ids'].shape)
    print(batch['next_token_id'].shape)
    print(batch['token_ids_reverse'].shape)
    print(batch['tokens_characters_reverse'].shape)
    break
