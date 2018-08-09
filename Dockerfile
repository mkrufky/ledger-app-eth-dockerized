FROM ubuntu:16.04 AS builder

RUN apt-get update
RUN apt-get install -y python3 python3-setuptools python3-dev build-essential git wget tar libusb-1.0-0.dev libudev-dev gcc-multilib g++-multilib

RUN easy_install3 pip

RUN pip3 install virtualenv

RUN git clone -b sideload-113 https://github.com/mkrufky/blue-app-eth
RUN git clone https://github.com/LedgerHQ/blue-loader-python
RUN git clone https://github.com/LedgerHQ/nanos-secure-sdk

RUN mkdir -p /bolos-devenv
WORKDIR /bolos-devenv

ENV BOLOS_ENV=/bolos-devenv
ENV BOLOS_SDK=/nanos-secure-sdk

RUN wget https://launchpad.net/gcc-arm-embedded/5.0/5-2016-q1-update/+download/gcc-arm-none-eabi-5_3-2016q1-20160330-linux.tar.bz2
RUN tar xjvf gcc-arm-none-eabi-5_3-2016q1-20160330-linux.tar.bz2

RUN wget http://releases.llvm.org/4.0.0/clang+llvm-4.0.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz
RUN tar xvf clang+llvm-4.0.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz
RUN ln -s clang+llvm-4.0.0-x86_64-linux-gnu-ubuntu-16.04 clang-arm-fropi

WORKDIR /nanos-secure-sdk

RUN sed -i s/python/python3/g icon.py

WORKDIR /blue-loader-python

RUN virtualenv ledger
RUN . ledger/bin/activate
RUN pip3 install ledgerblue

WORKDIR /blue-app-eth

RUN mv Makefile Makefile.genericwallet

COPY . .
RUN mkdir -p src
RUN cp glyphs.* src/
RUN cp glyphs.* glyphs/

RUN alias python=python3

ENV GLYPH_SRC_DIR=/blue-app-eth/glyphs/

ARG CHAIN
ENV CHAIN=${CHAIN}
ENV TARGET="/binaries/$CHAIN"
RUN mkdir -p ${TARGET}

RUN sed -i s/python/python3/g Makefile.genericwallet

RUN cp glyphs/glyphs.* src/
# RUN GLYPH_SRC_DIR=/blue-app-eth/glyphs/ CHAIN=ethereum
# RUN make -f Makefile.genericwallet load

RUN make -f Makefile.genericwallet

RUN python3 /nanos-secure-sdk/icon.py nanos_app_${CHAIN}.gif hexbitmaponly 2>/dev/null\ > ${TARGET}/icon.hex

RUN echo "#!/bin/sh" > ${TARGET}/load.sh
RUN make -f Makefile.genericwallet sideloadcmd | tail -n1 | sed s/'--appName '/'--appName "'/1 | sed s/' --appVersion'/'" --appVersion'/1 | sed s/'--path '/'--path "'/g | sed s/' --appFlags'/'" --appFlags'/1 | sed s/'$'/'" --icon \`cat icon.hex\`'/1 >> ${TARGET}/load.sh

RUN cp -a bin ${TARGET}/
RUN cp -a debug ${TARGET}/
ENTRYPOINT tar --create ${TARGET}
