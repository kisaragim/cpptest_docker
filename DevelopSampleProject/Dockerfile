FROM ubuntu:22.04
WORKDIR /opt/app

ADD . /opt/app


# ツールチェインおよび必要なパッケージのインストール
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
      build-essential \
      git \
      bzip2 \
      qemu-user-static \
      wget && \
    apt-get clean
RUN wget -qO- https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2 | tar -xj

ENV PATH "/opt/app/gcc-arm-none-eabi-9-2019-q4-major/bin:$PATH"

