#!/bin/bash

export BENCHMARK_NAME=test
export BENCHMARK_DIR=/pipeline/test/motivation
export SRC=$BENCHMARK_DIR/$BENCHMARK_NAME.c
export ORIGIN_BIN=$BENCHMARK_DIR/$BENCHMARK_NAME.origin
export REDUCED_BIN=$BENCHMARK_DIR/$BENCHMARK_NAME.reduced
export ORACLE=$BENCHMARK_DIR/$BENCHMARK_NAME.sh
export TIMEOUT="-k 1 1"
export LOG=$BENCHMARK_DIR/log.txt

source $CHISEL_BENCHMARK_HOME/benchmark/test-base.sh

function clean() {
  # TODO
  return 0
}

function desired() {
  
}

function undesired() {
  # TODO
}

function desired_disaster() {
  # TODO
}

main
