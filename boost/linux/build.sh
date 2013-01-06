#!/bin/bash

pushd tools/build/v2 || exit 1
./bootstrap.sh || exit 1
./b2 install --prefix=../../../prebuilt/tool/linuxx86 || exit 1
popd || exit 1

./bootstrap.sh || exit 1
./b2 variant=debug address-model=32 architecture=x86 instruction-set=i486 --stagedir=./prebuilt/lib/linux/x86-32/debug --with-system --with-filesystem --with-program_options --with-regex || exit 1
mv ./prebuilt/lib/linux/x86-32/debug/lib/* ./prebuilt/lib/linux/x86-32/debug || exit 1
rmdir ./prebuilt/lib/linux/x86-32/debug/lib || exit 1

./b2 variant=release address-model=32 architecture=x86  instruction-set=i486  --stagedir=./prebuilt/lib/linux/x86-32/release --with-system --with-filesystem --with-program_options --with-regex || exit 1
mv ./prebuilt/lib/linux/x86-32/release/lib/* ./prebuilt/lib/linux/x86-32/release || exit 1
rmdir ./prebuilt/lib/linux/x86-32/release/lib || exit 1

./b2 variant=debug address-model=64 architecture=x86 --stagedir=./prebuilt/lib/linux/x86-64/debug --with-system --with-filesystem --with-program_options --with-regex || exit 1
mv ./prebuilt/lib/linux/x86-64/debug/lib/* ./prebuilt/lib/linux/x86-64/debug || exit 1
rmdir ./prebuilt/lib/linux/x86-64/debug/lib || exit 1

./b2 variant=release address-model=64 architecture=x86 --stagedir=./prebuilt/lib/linux/x86-64/release --with-system --with-filesystem --with-program_options --with-regex || exit 1
mv ./prebuilt/lib/linux/x86-64/release/lib/* ./prebuilt/lib/linux/x86-64/release || exit 1
rmdir ./prebuilt/lib/linux/x86-64/release/lib || exit 1