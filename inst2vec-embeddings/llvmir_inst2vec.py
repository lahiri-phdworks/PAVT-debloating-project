from inst2vec import inst2vec_preprocess as i2v_prep
with open("llvmir_dataset/tree.ll") as ll_file:
	raw_data = ll_file.read().splitlines()
	dump_data, inst2vec_dict = i2v_prep.construct_struct_types_dictionary_for_file(raw_data)
print("\n ============ Dump Data =============== \n")
for lines in dump_data :
	print(lines)
print("\n ============ Dictonary =============== \n")
for lines in inst2vec_dict :
	print(lines)
