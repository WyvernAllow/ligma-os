# Ligma OS
This repository contains the docker container and build scripts for creating ligma-os images.

# Packages
- acl
- attr
- autoconf
- automake
- bash
- bc
- binutils
- bison
- bzip2
- check
- coreutils
- dejagnu
- diffutils
- e2fsprogs
- elfutils
- expat
- expect5
- findutils
- flex
- flit_core
- gawk
- gcc
- gdbm
- gettext
- glibc
- gmp
- gperf
- grep
- groff
- grub
- gzip
- iana-etc
- inetutils
- intltool
- iproute2
- Jinja2
- kbd
- kmod
- less
- lfs-bootscripts
- libcap
- libffi
- libpipeline
- libtool
- libxcrypt
- linux ([forked](https://github.com/WyvernAllow/linux))
- m4
- make
- man-db
- man-pages
- MarkupSafe
- meson
- mpc
- mpfr
- ncurses
- ninja
- openssl
- patch
- perl
- pkgconf
- procps-ng
- psmisc
- Python
- python
- readline
- sed
- setuptools
- shadow
- sysklogd
- systemd
- systemd-man-pages-255
- sysvinit
- tar
- tcl
- texinfo
- tzdata
- udev-lfs
- util-linux
- vim
- wheel
- XML-Parser
- xz
- zlib
- zstd

# Building

**NOTE**: Building the .iso image can take a long time. Download a prebuilt .iso [here](https://github.com/WyvernAllow/ligma-os/releases/latest).

## Requirements
- [git](https://www.git-scm.com/)
- [docker](https://www.docker.com/)

## Build instructions

1. Clone the repository
    ```console
    git clone https://github.com/WyvernAllow/ligma-os.git
    ```

---

2. Build the docker container
    ```console
    docker build ligma-os -t ligma-os-buildenv
    ```

---

3. Run the container
    ```console
    docker run ligma-os-buildenv
    ```