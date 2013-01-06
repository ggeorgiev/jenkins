#!/bin/bash

g++ -g -arch x86_64 -Iinclude -I. -c src/gtest-all.cc || exit 1
ar -rv libgtest.a gtest-all.o || exit 1
mv ./libgtest.a ./prebuilt/lib/linux/x86-64/debug || exit 1
rm ./gtest-all.o

g++ -arch x86_64 -Iinclude -I. -c src/gtest-all.cc || exit 1
ar -rv libgtest.a gtest-all.o || exit 1
mv ./libgtest.a ./prebuilt/lib/linux/x86-64/release || exit 1
rm ./gtest-all.o

g++ -g -arch i386 -Iinclude -I. -c src/gtest-all.cc || exit 1
ar -rv libgtest.a gtest-all.o || exit 1
mv ./libgtest.a ./prebuilt/lib/linux/x86-64/debug || exit 1
rm ./gtest-all.o

g++ -arch i386 -Iinclude -I. -c src/gtest-all.cc || exit 1
ar -rv libgtest.a gtest-all.o || exit 1
mv ./libgtest.a ./prebuilt/lib/linux/x86-64/release || exit 1
rm ./gtest-all.o
