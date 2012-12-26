#!/bin/bash


./bootstrap.sh || exit 1
./b2 install --prefix=./prebuilt --with-system || exit 1
rm  ./prebuilt/lib/* || exit 1

pushd tools/build/v2 || exit 1
./bootstrap.sh || exit 1
./b2 install --prefix=../../../prebuilt/tool/macosxx86 || exit 1
popd || exit 1

./b2 variant=debug address-model=32 architecture=x86 --stagedir=./prebuilt/lib/macosx/x86-32/debug --with-system --with-filesystem --with-program_options --with-regex || exit 1
mv ./prebuilt/lib/macosx/x86-32/debug/lib/* ./prebuilt/lib/macosx/x86-32/debug || exit 1
rmdir ./prebuilt/lib/macosx/x86-32/debug/lib || exit 1

./b2 variant=release address-model=32 architecture=x86 --stagedir=./prebuilt/lib/macosx/x86-32/release --with-system --with-filesystem --with-program_options --with-regex || exit 1
mv ./prebuilt/lib/macosx/x86-32/release/lib/* ./prebuilt/lib/macosx/x86-32/release || exit 1
rmdir ./prebuilt/lib/macosx/x86-32/release/lib || exit 1

./b2 variant=debug address-model=64 architecture=x86 --stagedir=./prebuilt/lib/macosx/x86-64/debug --with-system --with-filesystem --with-program_options --with-regex || exit 1
mv ./prebuilt/lib/macosx/x86-64/debug/lib/* ./prebuilt/lib/macosx/x86-64/debug || exit 1
rmdir ./prebuilt/lib/macosx/x86-64/debug/lib || exit 1

./b2 variant=release address-model=64 architecture=x86 --stagedir=./prebuilt/lib/macosx/x86-64/release --with-system --with-filesystem --with-program_options --with-regex || exit 1
mv ./prebuilt/lib/macosx/x86-64/release/lib/* ./prebuilt/lib/macosx/x86-64/release || exit 1
rmdir ./prebuilt/lib/macosx/x86-64/release/lib || exit 1