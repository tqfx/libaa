# An algorithm library {#mainpage}

[![msvc](https://github.com/tqfx/libaa/actions/workflows/msvc.yml/badge.svg)](https://github.com/tqfx/libaa/actions/workflows/msvc.yml)
[![linux](https://github.com/tqfx/libaa/actions/workflows/linux.yml/badge.svg)](https://github.com/tqfx/libaa/actions/workflows/linux.yml)
[![macos](https://github.com/tqfx/libaa/actions/workflows/macos.yml/badge.svg)](https://github.com/tqfx/libaa/actions/workflows/macos.yml)
[![mingw](https://github.com/tqfx/libaa/actions/workflows/mingw.yml/badge.svg)](https://github.com/tqfx/libaa/actions/workflows/mingw.yml)
[![msys2](https://github.com/tqfx/libaa/actions/workflows/msys2.yml/badge.svg)](https://github.com/tqfx/libaa/actions/workflows/msys2.yml)
[![freebsd](https://github.com/tqfx/libaa/actions/workflows/freebsd.yml/badge.svg)](https://github.com/tqfx/libaa/actions/workflows/freebsd.yml)
[![doxygen](https://github.com/tqfx/libaa/actions/workflows/doxygen.yml/badge.svg)](https://github.com/tqfx/libaa/actions/workflows/doxygen.yml)

## required tools

- C/C++ compiler: [gcc](https://gcc.gnu.org) or [llvm](https://llvm.org) or [msvc](https://visualstudio.microsoft.com/visual-cpp-build-tools) etc
- [cmake](https://cmake.org/download)

## optional tools

- [python](https://www.python.org/downloads)

## build

### cmake

```bash
cmake -S . -B build
cmake --build build
cmake --install build
```

### vcpkg

```bash
cmake -S . -B build -DENABLE_VCPKG=ON
cp -r build/vcpkg/* $VCPKG_INSTALLATION_ROOT
```

### conan

```bash
conan create .
```

### cython

```bash
python setup.py build_ext --inplace
```

### wheel

```bash
python setup.py bdist_wheel
```

## using

### CMakeLists.txt

```cmake
find_package(libaa CONFIG REQUIRED)
target_link_libraries(<TARGET> PRIVATE libaa::aa)
```

#### conanfile.txt

```txt
[requires]
libaa/[~0.1]
```

### python

```py
import aa
print("version", aa.version())
```

## Copyright {#copyright}

Copyright (C) 2020 tqfx, All rights reserved.

This Source Code Form is subject to the terms of the Mozilla Public
License, v. 2.0. If a copy of the MPL was not distributed with this
file, You can obtain one at https://mozilla.org/MPL/2.0/.
