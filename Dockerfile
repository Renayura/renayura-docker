FROM ubuntu:22.04

MAINTAINER Renayura

USER root

COPY ["install_packages.sh", "/"]

ADD https://github.com/AkihiroSuda/clone3-workaround/releases/download/v1.0.0/clone3-workaround.x86_64 /clone3-workaround

RUN chmod 755 /clone3-workaround

SHELL ["/clone3-workaround","/bin/sh", "-c"]

RUN apt-get update && apt-get install sudo -y

RUN chmod +x /install_packages.sh && bash /install_packages.sh
