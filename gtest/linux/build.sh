#!/bin/bash

g++ -g -m64 -Iinclude -I. -c src/gtest-all.cc || exit 1
ar -rv libgtest.a gtest-all.o || exit 1
mkdir -p ./prebuilt/lib/linux/x86-64/debug || exit 1
mv ./libgtest.a ./prebuilt/lib/linux/x86-64/debug || exit 1
rm ./gtest-all.o

g++ -m64 -Iinclude -I. -c src/gtest-all.cc || exit 1
ar -rv libgtest.a gtest-all.o || exit 1
mkdir -p ./prebuilt/lib/linux/x86-64/release || exit 1
mv ./libgtest.a ./prebuilt/lib/linux/x86-64/release || exit 1
rm ./gtest-all.o

g++ -g -march=i486 -m32 -Iinclude -I. -c src/gtest-all.cc || exit 1
ar -rv libgtest.a gtest-all.o || exit 1
mkdir -p ./prebuilt/lib/linux/x86-32/debug || exit 1
mv ./libgtest.a ./prebuilt/lib/linux/x86-32/debug || exit 1
rm ./gtest-all.o

g++ -march=i486 -m32 -Iinclude -I. -c src/gtest-all.cc || exit 1
ar -rv libgtest.a gtest-all.o || exit 1
mkdir -p ./prebuilt/lib/linux/x86-32/release || exit 1
mv ./libgtest.a ./prebuilt/lib/linux/x86-32/release || exit 1
rm ./gtest-all.o
