FROM ubuntu:18.04

LABEL maintainer="Ryo Ota <nwtgck@gmail.com>"
ENV MKP224O_REVISION 9032811fc572ce590e90c9b20eed57fb180b5bbc

RUN apt update && \
    apt install -y git gcc libsodium-dev make autoconf && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/cathugger/mkp224o.git && \
    cd mkp224o && \
    git checkout $MKP224O_REVISION && \
    ./autogen.sh && \
    ./configure --enable-amd64-51-30k && \
    make && \
    cp mkp224o /usr/local/bin

WORKDIR /root
