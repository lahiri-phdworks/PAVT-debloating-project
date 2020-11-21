# Dockerfile for OCCAM binary
# produces package in /occam/build
# Arguments:
#  - UBUNTU:     bionic
#  - BUILD_TYPE: debug, release

ARG UBUNTU

# Pull base image.
FROM buildpack-deps:$UBUNTU

ARG BUILD_TYPE
RUN echo "Build type set to: $BUILD_TYPE" && \
    # Install deps.
    apt-get update && \
    apt-get install -yqq software-properties-common && \
    apt-get update && \
    apt-get install -y wget libprotobuf-dev python-protobuf protobuf-compiler && \
    apt-get install -y python-pip

RUN pip --version && \
    pip install setuptools --upgrade && \
    pip install wheel && \
    pip install protobuf && \
    pip install lit
RUN apt-get install -yqq libboost-dev

RUN mkdir /go
ENV GOPATH "/go"

RUN apt-get -y install golang-go && \
    go get github.com/SRI-CSL/gllvm/cmd/...

# Install llvm10 from llvm repo since bionic comes with much older version
WORKDIR /tmp
RUN wget https://apt.llvm.org/llvm.sh && \
    chmod +x llvm.sh && \
    ./llvm.sh 10

ENV LLVM_HOME "/usr/lib/llvm-10"
ENV PATH "$LLVM_HOME/bin:/bin:/usr/bin:/usr/local/bin:/occam/utils/FileCheck_trusty:$GOPATH/bin:$PATH"

RUN rm -rf /occam
RUN mkdir occam
COPY ./ /occam

WORKDIR /occam
ENV CC clang
ENV CXX clang++
ENV LLVM_COMPILER clang
ENV WLLVM_OUTPUT WARNING
ENV OCCAM_HOME "/occam"

# Build configuration.
RUN make
RUN make install
RUN make test

RUN mkdir /metrics

RUN apt-get install -y python3-dev libffi-dev build-essential virtualenvwrapper default-jre default-jdk
RUN pip install capstone ropgadget

RUN javac --help
WORKDIR /
RUN git clone https://github.com/michaelbrownuc/gality.git gality
WORKDIR /gality
RUN javac -d ./bin/ ./src/gality/Program.java

WORKDIR /
RUN git clone https://github.com/lahiri-phdworks/GadgetSetAnalyzer.git GadgetSetAnalyzer
RUN git clone https://github.com/lahiri-phdworks/ROPgadget.git ROPgadget

# Chisel Install +

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


WORKDIR /metrics