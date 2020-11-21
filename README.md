# Debloat Project

A Software Debloating Package for LLVM IR Frontends, firstly on ```C``` or ```C++```.

## Rough Architecture : 

![architecture.jpeg](https://raw.githubusercontent.com/lahiri-phdworks/reinforcedlearning-debloater/master/Samples/Images/architecture.jpeg)

## Paper 1 : 

- Effective Program Debloating via Reinforcement Learning : [https://dl.acm.org/doi/10.1145/3243734.3243838](https://dl.acm.org/doi/10.1145/3243734.3243838)

## Paper 2 : 

- Reinforcement Learning Guided Software Debloating : [http://www.csl.sri.com/users/gehani/papers/MLSys-2019.DeepOCCAM.pdf](http://www.csl.sri.com/users/gehani/papers/MLSys-2019.DeepOCCAM.pdf)

## Project Related : 

- ncc/Inst2Vec : [https://www.youtube.com/watch?v=8aXl53pGflU](https://www.youtube.com/watch?v=8aXl53pGflU)

- Effective Program Debloating via Reinforcement Learning : [https://www.youtube.com/watch?v=8eRZKoLFakw](https://www.youtube.com/watch?v=8eRZKoLFakw)

- Program debloating via stochastic optimization : [https://dl.acm.org/doi/10.1145/3377816.3381739](https://dl.acm.org/doi/10.1145/3377816.3381739)

- Trimmer Paper : [http://www.csl.sri.com/users/gehani/papers/ASE-2018.Trimmer.pdf](http://www.csl.sri.com/users/gehani/papers/ASE-2018.Trimmer.pdf)

## Running Dockers : 

We delete the running docker after running it. To persist the docker remove the ```-rm``` flag. ```$PWD``` maps the present working directory to the folder ```/home``` or ```/folder``` in the ```running``` docker.

- Pull the required docker images from the link : [https://hub.docker.com/repository/docker/prodrelworks/](https://hub.docker.com/repository/docker/prodrelworks/)

- Clone the [Chisel Tool](https://github.com/lahiri-phdworks/chisel) Repository & run from the repository: ```sudo docker run --rm -it -v $PWD:/home -it prodrelworks/chisel-tool:latest```.

- Clone the [OCCAM Tool](https://github.com/lahiri-phdworks/OCCAM) Repository & run from the repository: ```sudo docker run --rm -it -v $PWD:/home -it prodrelworks/occam10:latest```.

- For ```inst2vec``` clone and use this repository for building. [ncc-inst2vec](https://github.com/lahiri-phdworks/ncc)

- Each ```docker``` image already contains the ```benchmarks``` as shared below. 

## Tools : 

- OCCAM Tool : [https://github.com/lahiri-phdworks/OCCAM](https://github.com/lahiri-phdworks/OCCAM)

- AFL Tool (for Chisel) : [https://github.com/lahiri-phdworks/AFL](https://github.com/lahiri-phdworks/AFL)

- Chisel Tool : [https://github.com/aspire-project/chisel](https://github.com/aspire-project/chisel)

- Inst2Vec : [https://github.com/lahiri-phdworks/ncc](https://github.com/lahiri-phdworks/ncc)

- Trimming & Reduction alogrithm : [https://github.com/aspire-project/chisel/blob/master/src/core/Reduction.cpp](https://github.com/aspire-project/chisel/blob/master/src/core/Reduction.cpp)


## Benchmarks & Tests : 

- Chisel-Bench : [https://github.com/lahiri-phdworks/chisel-bench](https://github.com/lahiri-phdworks/chisel-bench)

- Inst2Vec Bench : [https://github.com/lahiri-phdworks/ncc/tree/master/published_results](https://github.com/lahiri-phdworks/ncc/tree/master/published_results)

- Debloating Test Suite : [https://github.com/ashish-gehani/DebloatingTestSuite](https://github.com/ashish-gehani/DebloatingTestSuite)

- OCCAM Test & Benchmarks : [https://github.com/SRI-CSL/OCCAM-Benchmarks](https://github.com/SRI-CSL/OCCAM-Benchmarks)


## Analysis : 

- Angr Analysis Tool : [https://docs.angr.io/introductory-errata/install](https://docs.angr.io/introductory-errata/install)

- ROPGadget Tool : [https://github.com/lahiri-phdworks/ROPgadget](https://github.com/lahiri-phdworks/ROPgadget)

- Gality : [https://github.com/lahiri-phdworks/gality](https://github.com/lahiri-phdworks/gality)

- Binary GSA : [https://github.com/michaelbrownuc/GadgetSetAnalyzer](https://github.com/michaelbrownuc/GadgetSetAnalyzer)

