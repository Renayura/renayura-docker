#!/bin/bash

# TimeZone Configuration
TZ=Asia/Jakarta
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Basic packages
apt update && apt install --no-install-recommends -y \
    adb autoconf automake axel bc bison build-essential \
    ccache clang cmake curl expat fastboot flex g++ \
    g++-multilib gawk gcc gcc-multilib git gnupg gperf \
    htop imagemagick lib32ncurses5-dev lib32z1-dev libtinfo5 libc6-dev libcap-dev \
    libexpat1-dev libgmp-dev '^liblz4-.*' '^liblzma.*' libmpc-dev libmpfr-dev libncurses5-dev \
    libsdl1.2-dev libssl-dev libtool libxml2 libxml2-utils '^lzma.*' lzop \
    maven ncftp ncurses-dev patch patchelf pkg-config pngcrush \
    pngquant python2.7 python-all-dev re2c sudo schedtool squashfs-tools subversion \
    texinfo unzip w3m xsltproc zip zlib1g-dev lzip \
    libxml-simple-perl libswitch-perl apt-utils

apt autoremove -qqy && apt autoclean -qqy && rm -rf /var/lib/apt/lists/*
