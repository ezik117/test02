#!/bin/bash -eu

# Build project using the OSS-Fuzz enviroonment flags.
$CC $CFLAGS -c test.c -o test.o
$CC $CFLAGS -c fuzzer.c -o fuzzer.o

$CXX $CXXFLAGS $LIB_FUZZING_ENGINE fuzzer.o test.o -o $OUT/test02
