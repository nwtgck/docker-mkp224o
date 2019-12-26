FROM ubuntu:18.04

LABEL maintainer="Ryo Ota <nwtgck@gmail.com>"

RUN apt update && apt install -y git
RUN git clone https://github.com/cathugger/mkp224o.git
WORKDIR mkp224o
RUN git checkout 9032811fc572ce590e90c9b20eed57fb180b5bbc
RUN apt install -y build-essential
RUN apt install -y autoconf
RUN apt install -y libsodium-dev
RUN ./autogen.sh
RUN ./configure
RUN make
