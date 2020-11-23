
FROM debian:buster

RUN apt-get update && apt-get install -y software-properties-common wget gnupg
RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
RUN apt-add-repository "deb http://apt.llvm.org/buster/ llvm-toolchain-buster-8 main" && apt-get update
RUN apt-get install -y clang-8 libclang-8-dev llvm-8-dev cmake git wget
RUN apt-get install -y libspdlog-dev nlohmann-json-dev
RUN apt-get install -y libmlpack-dev
RUN ln -s /usr/bin/clang-8 /usr/bin/clang && ln -s /usr/bin/llvm-config-8 /usr/bin/llvm-config

RUN git clone https://github.com/aspire-project/chisel 
RUN git clone https://github.com/aspire-project/chiselbench

RUN mkdir -p chisel/build && cd chisel/build && CXX=clang cmake .. && make

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/chisel/build/bin
ENV CC clang
ENV CHISEL_BENCHMARK_HOME /chiselbench
ENV CHISEL_HOME /chisel

WORKDIR /
RUN apt-get install -y python python-pip python-dev
RUN pip install wget
RUN apt-get install -y python3-dev python3-pip libffi-dev build-essential virtualenvwrapper default-jre default-jdk
RUN pip install capstone ropgadget wllvm 
RUN pip3 install angr

RUN cd / && git clone https://github.com/michaelbrownuc/gality.git
RUN cd /gality && javac -d ./bin/ ./src/gality/Program.java

RUN apt-get install -y nano
RUN cd / && git clone https://github.com/lahiri-phdworks/GadgetSetAnalyzer.git
RUN cd / && git clone https://github.com/lahiri-phdworks/ROPgadget.git
