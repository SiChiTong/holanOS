Build a minimal multi-tasking OS kernel for Raspberry Pi 2

Prerequisites
-------------
- [QEMU](https://github.com/qemu/qemu)
  - Build instructions
```
  mkdir build
  cd build
  ../configure
  make
```
- [GNU Toolchain for ARM](https://launchpad.net/gcc-arm-embedded)
- Set `$PATH` accordingly

Steps
-----
* `Hello`
  - Enable RPI2 USART to print trivial greetings and loopback.

Building and Verification
-------------------------
* Changes the current working directory to the specified one and then
```
make
make qemu
```

Licensing
---------
`holanOS` is freely redistributable under the two-clause BSD License.
Use of this source code is governed by a BSD-style license that can be found
in the `LICENSE` file.

Reference
---------
* [mini-arm-os](https://github.com/jserv/mini-arm-os)
