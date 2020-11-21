## Running `inst2vec` analysis

```
python3 train_inst2vec.py --embeddings_file published_results/emb.p --vocabulary_folder published_results/vocabulary 
```

## Building Dockers

From ```build``` folder.

```
sudo docker build --build-arg UBUNTU=bionic --build-arg BUILD_TYPE=Release -t prodrelworks/gadgets-metrics:latest -f metric-gadgets.Dockerfile .
```

## Running Dockers

```
sudo docker run --rm -it -v $PWD:/home -it prodrelworks/gadgets-metrics:latest
sudo docker run --rm -it -v $PWD:/home -it prodrelworks/occam10:latest
sudo docker run --rm -it -v $PWD:/home -it prodrelworks/chisel-tool:latest
```

## Frequent Instructions

```
./runbench.py --sets="portfolio.set" --slash-opts="--disable-inlining,--enable-config-prime" --cpu=60 --mem=4096

chisel ./test.sh file.c

ROPgadget --binary /usr/bin/whereis > /tmp/whereis.gadgets
java -cp ./bin/ gality.Program /tmp/whereis.gadgets /tmp/whereis.gadgets.metrics

python GSA.py --output_metrics --output_addresses ./samples/CHISEL/date/date-8.21 "{'Aggressive':'./samples/CHISEL/date/date-8.21.reduced'}"
```