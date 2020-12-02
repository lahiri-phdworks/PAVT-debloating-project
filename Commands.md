cd /occam/examples/portfolio/tree
make 
cd ../../../
cd ./razor/MLPolicy
python3 main.py -action gen-meta -workdir /occam/examples/portfolio/tree

apt install -yqq build-essential autoconf libtool pkg-config
git clone --recurse-submodules -b v1.33.2 https://github.com/grpc/grpc

cd grpc

mkdir -p cmake/build

cd ./grpc/cmake/build && rm -rf *	

cmake -DgRPC_INSTALL=ON ../..

make -j 12
make install 

cd ../../ && make plugins -j 12

export OCCAM_HOME=/home/mlc655/Documents/Projects/DeepOCCAM
export LD_FLAGS='-L/usr/local/lib'
export PATH=$PATH:$HOME/grpc/bins/opt
export PATH=$PATH:$HOME/grpc/libs/opt
export OCCAM_LOGFILE=$OCCAM_HOME/.occam.log
export PATH=$PATH:$HOME/Documents/Projects/DeepOCCAM/utils/FileCheck_trusty
export LLVM_HOME=/usr/lib/llvm-10
export LLVM_CONFIG=llvm-config
export CC=clang
export CXX=clang++
export WLLVM_OUTPUT=WARNING
export PATH="$PATH:$HOME/.local/bin"
export PATH=$PATH:$GOPATH/bin

export OCCAM_HOME=/home/mlc655/OCCAM
export LD_FLAGS='-L/usr/local/lib'
export PATH=$PATH:$HOME/grpc/bins/opt
export OCCAM_LOGFILE=$OCCAM_HOME/.occam.log
export PATH=$PATH:$HOME/OCCAM/utils/FileCheck_trusty
export LLVM_HOME=/usr/lib/llvm-10
export LLVM_CONFIG=llvm-config
export CC=clang
export CXX=clang++
export WLLVM_OUTPUT=WARNING
export PATH="$PATH:$HOME/.local/bin"
export PATH=$PATH:$GOPATH/bin

export LD_FLAGS='-L/usr/local/lib'
export PATH=$PATH:$HOME/grpc/bins/opt
export OCCAM_LOGFILE=$OCCAM_HOME/.occam.log
export PATH=$PATH:$HOME/Documents/Projects/OCCAM/utils/FileCheck_trusty
export OCCAM_HOME=/home/mlc655/Documents/Projects/OCCAM
export LLVM_HOME=/usr/lib/llvm-10
export LLVM_CONFIG=llvm-config
export CC=clang
export CXX=clang++
export WLLVM_OUTPUT=WARNING
export PATH="$PATH:$HOME/.local/bin"
export PATH=$PATH:$GOPATH/bin

PB_REL="https://github.com/protocolbuffers/protobuf/releases"
curl -LO $PB_REL/download/v3.14.0/protoc-3.14.0-linux-x86_64.zip
unzip protoc-3.14.0-linux-x86_64.zip -d $HOME/.local
export PATH="$PATH:$HOME/.local/bin"

grep GOOGLE_PROTOBUF_VERSION /usr/local/include/google/protobuf/stubs/common.h

PROTOC  = /usr/local/bin/protoc # $(shell which protoc)

LD_LIBRARY_PATH=/usr/local/lib

 /usr/lib/llvm-10/bin/opt -load=/home/mlc655/Documents/Projects/DeepOCCAM/lib/libSeaDsa.so -load=/home/mlc655/Documents/Projects/DeepOCCAM/lib/libprevirt.so /home/mlc655/Documents/Projects/DeepOCCAM/examples/tree/slash/main.o.bc -o=/home/mlc655/Documents/Projects/DeepOCCAM/examples/tree/slash/main.o.a.bc

 /usr/lib/llvm-10/bin/opt -load=/home/mlc655/Documents/Projects/OCCAM/lib/libSeaDsa.so -load=/home/mlc655/Documents/Projects/OCCAM/lib/libprevirt.so /home/mlc655/Documents/Projects/OCCAM/examples/tree/slash/main.o.bc -o=/home/mlc655/Documents/Projects/OCCAM/examples/tree/slash/main.o.a.bc

objdump -t /home/mlc655/grpc/libs/opt/libgrpc++.a | grep _ZN9grpc_core4Fork16support_enabled_E
objdump -t ../../lib/libprevirt.so  | grep *UND* 

cd /grpc
make

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/grpc/libs/opts

sudo docker run --name occam -it -v $PWD:/occamtest prodrelworks/occam10:latest

https://github.com/cxreet/razor/wiki/A-Simple-Demo-With-Heuristics