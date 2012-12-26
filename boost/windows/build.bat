pushd tools\build\v2 || exit 1
call bootstrap.bat || exit 1
b2 install --prefix=..\..\..\prebuilt\tool\windowsx86 || exit 1
popd || exit 1

call bootstrap.bat || exit 1

b2 --layout=system toolset=msvc-10.0 variant=debug address-model=32 architecture=x86 link=static runtime-link=shared --stagedir=prebuilt\lib\windows\msvc-10.0-md\x86-32\debug --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-10.0-md\x86-32\debug\lib\* prebuilt\lib\windows\msvc-10.0-md\x86-32\debug || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-10.0-md\x86-32\debug\lib || exit 1

b2 --layout=system toolset=msvc-10.0 variant=release address-model=32 architecture=x86 link=static runtime-link=shared --stagedir=prebuilt\lib\windows\msvc-10.0-md\x86-32\release --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-10.0-md\x86-32\release\lib\* prebuilt\lib\windows\msvc-10.0-md\x86-32\release || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-10.0-md\x86-32\release\lib || exit 1

b2 --layout=system toolset=msvc-10.0 variant=debug address-model=64 architecture=x86 link=static runtime-link=shared --stagedir=prebuilt\lib\windows\msvc-10.0-md\x86-64\debug --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-10.0-md\x86-64\debug\lib\* prebuilt\lib\windows\msvc-10.0-md\x86-64\debug || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-10.0-md\x86-64\debug\lib || exit 1

b2 --layout=system toolset=msvc-10.0 variant=release address-model=64 architecture=x86 link=static runtime-link=shared --stagedir=prebuilt\lib\windows\msvc-10.0-md\x86-64\release --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-10.0-md\x86-64\release\lib\* prebuilt\lib\windows\msvc-10.0-md\x86-64\release || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-10.0-md\x86-64\release\lib || exit 1

b2 --layout=system toolset=msvc-10.0 variant=debug address-model=32 architecture=x86 link=static runtime-link=static --stagedir=prebuilt\lib\windows\msvc-10.0-mt\x86-32\debug --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-10.0-mt\x86-32\debug\lib\* prebuilt\lib\windows\msvc-10.0-mt\x86-32\debug || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-10.0-mt\x86-32\debug\lib || exit 1

b2 --layout=system toolset=msvc-10.0 variant=release address-model=32 architecture=x86 link=static runtime-link=static --stagedir=prebuilt\lib\windows\msvc-10.0-mt\x86-32\release --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-10.0-mt\x86-32\release\lib\* prebuilt\lib\windows\msvc-10.0-mt\x86-32\release || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-10.0-mt\x86-32\release\lib || exit 1

b2 --layout=system toolset=msvc-10.0 variant=debug address-model=64 architecture=x86 link=static runtime-link=static --stagedir=prebuilt\lib\windows\msvc-10.0-mt\x86-64\debug --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-10.0-mt\x86-64\debug\lib\* prebuilt\lib\windows\msvc-10.0-mt\x86-64\debug || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-10.0-mt\x86-64\debug\lib || exit 1

b2 --layout=system toolset=msvc-10.0 variant=release address-model=64 architecture=x86 link=static runtime-link=static --stagedir=prebuilt\lib\windows\msvc-10.0-mt\x86-64\release --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-10.0-mt\x86-64\release\lib\* prebuilt\lib\windows\msvc-10.0-mt\x86-64\release || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-10.0-mt\x86-64\release\lib || exit 1

b2 --layout=system toolset=msvc-9.0 variant=debug address-model=32 architecture=x86 link=static runtime-link=shared --stagedir=prebuilt\lib\windows\msvc-9.0-md\x86-32\debug --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-9.0-md\x86-32\debug\lib\* prebuilt\lib\windows\msvc-9.0-md\x86-32\debug || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-9.0-md\x86-32\debug\lib || exit 1

b2 --layout=system toolset=msvc-9.0 variant=release address-model=32 architecture=x86 link=static runtime-link=shared --stagedir=prebuilt\lib\windows\msvc-9.0-md\x86-32\release --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-9.0-md\x86-32\release\lib\* prebuilt\lib\windows\msvc-9.0-md\x86-32\release || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-9.0-md\x86-32\release\lib || exit 1

b2 --layout=system toolset=msvc-9.0 variant=debug address-model=64 architecture=x86 link=static runtime-link=shared --stagedir=prebuilt\lib\windows\msvc-9.0-md\x86-64\debug --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-9.0-md\x86-64\debug\lib\* prebuilt\lib\windows\msvc-9.0-md\x86-64\debug || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-9.0-md\x86-64\debug\lib || exit 1

b2 --layout=system toolset=msvc-9.0 variant=release address-model=64 architecture=x86 link=static runtime-link=shared --stagedir=prebuilt\lib\windows\msvc-9.0-md\x86-64\release --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-9.0-md\x86-64\release\lib\* prebuilt\lib\windows\msvc-9.0-md\x86-64\release || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-9.0-md\x86-64\release\lib || exit 1

b2 --layout=system toolset=msvc-9.0 variant=debug address-model=32 architecture=x86 link=static runtime-link=static --stagedir=prebuilt\lib\windows\msvc-9.0-mt\x86-32\debug --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-9.0-mt\x86-32\debug\lib\* prebuilt\lib\windows\msvc-9.0-mt\x86-32\debug || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-9.0-mt\x86-32\debug\lib || exit 1

b2 --layout=system toolset=msvc-9.0 variant=release address-model=32 architecture=x86 link=static runtime-link=static --stagedir=prebuilt\lib\windows\msvc-9.0-mt\x86-32\release --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-9.0-mt\x86-32\release\lib\* prebuilt\lib\windows\msvc-9.0-mt\x86-32\release || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-9.0-mt\x86-32\release\lib || exit 1

b2 --layout=system toolset=msvc-9.0 variant=debug address-model=64 architecture=x86 link=static runtime-link=static --stagedir=prebuilt\lib\windows\msvc-9.0-mt\x86-64\debug --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-9.0-mt\x86-64\debug\lib\* prebuilt\lib\windows\msvc-9.0-mt\x86-64\debug || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-9.0-mt\x86-64\debug\lib || exit 1

b2 --layout=system toolset=msvc-9.0 variant=release address-model=64 architecture=x86 link=static runtime-link=static --stagedir=prebuilt\lib\windows\msvc-9.0-mt\x86-64\release --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-9.0-mt\x86-64\release\lib\* prebuilt\lib\windows\msvc-9.0-mt\x86-64\release || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-9.0-mt\x86-64\release\lib || exit 1

b2 --layout=system toolset=msvc-8.0 variant=debug address-model=32 architecture=x86 link=static runtime-link=shared --stagedir=prebuilt\lib\windows\msvc-8.0-md\x86-32\debug --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-8.0-md\x86-32\debug\lib\* prebuilt\lib\windows\msvc-8.0-md\x86-32\debug || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-8.0-md\x86-32\debug\lib || exit 1

b2 --layout=system toolset=msvc-8.0 variant=release address-model=32 architecture=x86 link=static runtime-link=shared --stagedir=prebuilt\lib\windows\msvc-8.0-md\x86-32\release --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-8.0-md\x86-32\release\lib\* prebuilt\lib\windows\msvc-8.0-md\x86-32\release || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-8.0-md\x86-32\release\lib || exit 1

b2 --layout=system toolset=msvc-8.0 variant=debug address-model=64 architecture=x86 link=static runtime-link=shared --stagedir=prebuilt\lib\windows\msvc-8.0-md\x86-64\debug --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-8.0-md\x86-64\debug\lib\* prebuilt\lib\windows\msvc-8.0-md\x86-64\debug || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-8.0-md\x86-64\debug\lib || exit 1

b2 --layout=system toolset=msvc-8.0 variant=release address-model=64 architecture=x86 link=static runtime-link=shared --stagedir=prebuilt\lib\windows\msvc-8.0-md\x86-64\release --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-8.0-md\x86-64\release\lib\* prebuilt\lib\windows\msvc-8.0-md\x86-64\release || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-8.0-md\x86-64\release\lib || exit 1

b2 --layout=system toolset=msvc-8.0 variant=debug address-model=32 architecture=x86 link=static runtime-link=static --stagedir=prebuilt\lib\windows\msvc-8.0-mt\x86-32\debug --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-8.0-mt\x86-32\debug\lib\* prebuilt\lib\windows\msvc-8.0-mt\x86-32\debug || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-8.0-mt\x86-32\debug\lib || exit 1

b2 --layout=system toolset=msvc-8.0 variant=release address-model=32 architecture=x86 link=static runtime-link=static --stagedir=prebuilt\lib\windows\msvc-8.0-mt\x86-32\release --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-8.0-mt\x86-32\release\lib\* prebuilt\lib\windows\msvc-8.0-mt\x86-32\release || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-8.0-mt\x86-32\release\lib || exit 1

b2 --layout=system toolset=msvc-8.0 variant=debug address-model=64 architecture=x86 link=static runtime-link=static --stagedir=prebuilt\lib\windows\msvc-8.0-mt\x86-64\debug --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-8.0-mt\x86-64\debug\lib\* prebuilt\lib\windows\msvc-8.0-mt\x86-64\debug || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-8.0-mt\x86-64\debug\lib || exit 1

b2 --layout=system toolset=msvc-8.0 variant=release address-model=64 architecture=x86 link=static runtime-link=static --stagedir=prebuilt\lib\windows\msvc-8.0-mt\x86-64\release --with-system --with-filesystem --with-program_options --with-regex || exit 1
move prebuilt\lib\windows\msvc-8.0-mt\x86-64\release\lib\* prebuilt\lib\windows\msvc-8.0-mt\x86-64\release || exit 1
rmdir /s /q prebuilt\lib\windows\msvc-8.0-mt\x86-64\release\lib || exit 1