## Running `inst2vec` analysis

Check the results in ```inst2vec-embeddings``` folder. 

```
python3 train_inst2vec.py --embeddings_file published_results/emb.p --vocabulary_folder published_results/vocabulary 
```

## Building Dockers

From ```build``` folder. 

```
sudo docker build --build-arg UBUNTU=bionic --build-arg BUILD_TYPE=Release -t prodrelworks/gadgets-metrics:latest -f metric-gadgets.Dockerfile .
```
### `ncc` : 

```
sudo docker build --build-arg UBUNTU=bionic --build-arg BUILD_TYPE=Release -t prodrelworks/ncc:latest -f inst2vec.Dockerfile .
```

## Running Dockers

Maps ```$PWD (present working directory)``` to a folder ```/home``` in the docker image that runs. 

```
sudo docker pull prodrelworks/gadgets-metrics:latest
sudo docker pull prodrelworks/occam10:latest
sudo docker pull prodrelworks/chisel-tool:latest

sudo docker run --rm -it -v $PWD:/home -it prodrelworks/gadgets-metrics:latest
sudo docker run --rm -it -v $PWD:/home -it prodrelworks/occam10:latest
sudo docker run --rm -it -v $PWD:/home -it prodrelworks/chisel-tool:latest
```

## OCCAM Basic Run : 

```
./runbench.py --sets="portfolio.set" --slash-opts="--disable-inlining,--enable-config-prime" --cpu=60 --mem=4096
```

## Chisel Tool 

```
chisel ./test.sh file.c
```

## ROPgadgets & Metrics : 

```
ROPgadget --binary /usr/bin/whereis > /tmp/whereis.gadgets
cd /gality
java -cp ./bin/ gality.Program /tmp/whereis.gadgets /tmp/whereis.gadgets.metrics
```

## GadgetSetAnalyzer : 

```
python GSA.py --output_metrics --output_addresses ./samples/CHISEL/date/date-8.21 "{'Aggressive':'./samples/CHISEL/date/date-8.21.reduced'}"
```

## gRPC Server & Client Example

We need to run ```occam``` seperate from ```pytorch-ml```. 

- https://grpc.io/docs/languages/python/basics/

```
python route_guide_server.py
python route_guide_client.py
```
