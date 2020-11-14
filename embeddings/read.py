import h5py
import numpy as np
import pandas as pd
from keras.models import load_model

object = pd.read_pickle(r'result_embeddings.p')

# Don't print the whole file, too big.
for index, elems in enumerate(object):
    print("LLVM IR Vector : ")
    print(elems)
    if index > 10:
        break

# hdfOutput = pd.read_hdf(r'classifier_inst2vec.h5')
# print(hdfOutput)

filename = "CLASSIFYAPP-94.83.h5"

with h5py.File(filename, "r") as f:
    # List all groups
    print("Keys: %s" % f.keys())
    a_group_key = list(f.keys())[0]

    # Get the data
    data = list(f[a_group_key])
    print(data)

# Read here.
# https: // stackoverflow.com/questions/28170623/how-to-read-hdf5-files-in-python
# https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.read_hdf.html
