## Running `inst2vec` analysis

Check the results in ```inst2vec-embeddings``` folder. 

```
python3 train_inst2vec.py --embeddings_file published_results/emb.p --vocabulary_folder published_results/vocabulary 
```

## Building Dockers

### `OCCAM`

Clone the occam tool. 

- [https://github.com/lahiri-phdworks/OCCAM](https://github.com/lahiri-phdworks/OCCAM)
- [https://github.com/lahiri-phdworks/OCCAM-Benchmarks](https://github.com/lahiri-phdworks/OCCAM-Benchmarks)

```
sudo docker build --build-arg UBUNTU=bionic --build-arg BUILD_TYPE=Release -t prodrelworks/combined-tools:bionic -f occam.Dockerfile .
```

```
sudo docker build --build-arg UBUNTU=bionic --build-arg BUILD_TYPE=Release -t prodrelworks/deepoccam8:latest -f occam.Dockerfile .
```

```
sudo docker build --build-arg UBUNTU=bionic --build-arg BUILD_TYPE=Release -t prodrelworks/occam10:latest -f occam10.Dockerfile .
```

## Gadgets Analysis 

```
sudo docker build --build-arg UBUNTU=bionic --build-arg BUILD_TYPE=Release -t prodrelworks/gadgets-metrics:latest -f metric-gadgets.Dockerfile .
```

### `Chisel`

Clone the chisel tool. 

- [https://github.com/lahiri-phdworks/chisel](https://github.com/lahiri-phdworks/chisel)
- [https://github.com/lahiri-phdworks/chisel-bench](https://github.com/lahiri-phdworks/chisel-bench)

```
sudo docker build -t prodrelworks/chisel-tool:latest -f chisel.Dockerfile .
```

### `ncc` : inst2vec 

```
sudo docker build --build-arg UBUNTU=bionic --build-arg BUILD_TYPE=Release -t prodrelworks/ncc:latest -f inst2vec.Dockerfile .
```

## Running Dockers

Maps ```$PWD (present working directory)``` to a folder ```/home``` in the docker image that runs. We have ```3``` pipelines to work and produce results. 

```
sudo docker pull prodrelworks/gadgets-metrics:latest
sudo docker pull prodrelworks/occam10:latest
sudo docker pull prodrelworks/chisel-tool:latest
sudo docker pull prodrelworks/combined-tools:bionic
sudo docker pull prodrelworks/deepoccam8:latest

sudo docker run --rm -it -v $HOME/Documents/Projects:/home -it prodrelworks/gadgets-metrics:latest
sudo docker run --rm -it -v $HOME/Documents/Projects:/home -it prodrelworks/occam10:latest
sudo docker run --rm -it -v $HOME/Documents/Projects:/home -it prodrelworks/chisel-tool:latest
sudo docker run --rm -it -v $HOME/Documents/Projects:/home -it prodrelworks/combined-tools:bionic
```

## OCCAM Basic Run : 

```
./runbench.py --sets="portfolio.set" --slash-opts="--disable-inlining,--enable-config-prime" --cpu=60 --mem=4096
```

## Chisel Tool 

From ```/chisel``` dir.

```
$ sudo docker run --rm -it -v $HOME/Documents/Project:/home -it prodrelworks/chisel-tool:latest
$ cd /chisel
```

```
$ chisel ./test/test.sh ./test/function1/function1.c
$ chisel ./test/test.sh ./test/function0/function0.c
```

## ROPgadgets & Metrics : 

```
ROPgadget --binary /usr/bin/whereis > /tmp/whereis.gadgets
cd /gality && java -cp ./bin/ gality.Program /tmp/whereis.gadgets /tmp/whereis.gadgets.metrics && cat /tmp/whereis.gadgets.metrics
```

## GadgetSetAnalyzer : 

We need to edit a file here before we start the analsysis. 

```
cd /GadgetSetAnalyzer
nano src/static_analyzer/GadgetSet.py 
```
Modify line 22, gality path to ```/gality/bin/```. The below line fails but will work when the pipelines are running. 

```
python3 src/GSA.py --output_metrics --output_addresses ./samples/CHISEL/date/date-8.21.origin ./samples/CHISEL/date/date-8.21.reduced 
```

## gRPC Server & Client Example

We need to run ```occam``` seperate from ```pytorch-ml```. 

- https://grpc.io/docs/languages/python/basics/

```
python route_guide_server.py
python route_guide_client.py
```
