#!/usr/bin/env bash

#make the bitcode
CC=gclang make
get-bc test.o


export OCCAM_LOGLEVEL=INFO
export OCCAM_LOGFILE=${PWD}/slash/occam.log
export PATH=${LLVM_HOME}/bin:${PATH}

slash --stats --intra-spec=none --inter-spec=none --work-dir=slash test.manifest

cp slash/test test_slash

#debugging stuff below:
for bitcode in slash/*.bc; do
    llvm-dis  "$bitcode" &> /dev/null
done

exit 0
