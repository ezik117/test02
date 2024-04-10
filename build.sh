#!/bin/bash -eu

# Build project using the OSS-Fuzz enviroonment flags.
$CC $CFLAGS -c test.c -o test.o
$CC $CFLAGS -c fuzzer1.c -o fuzzer1.o
$CC $CFLAGS -c fuzzer2.c -o fuzzer2.o

$CC $CFLAGS $LIB_FUZZING_ENGINE fuzzer1.o test.o -o $OUT/fuzzer1
# $CC $CFLAGS $LIB_FUZZING_ENGINE fuzzer2.o test.o -o $OUT/fuzzer2
