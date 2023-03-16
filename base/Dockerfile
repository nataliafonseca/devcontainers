FROM ubuntu:jammy

RUN apt-get update \
  && apt-get -y install software-properties-common

RUN add-apt-repository ppa:git-core/ppa \
  && apt-get update

RUN apt-get -y install git make zsh bat exa curl wget

RUN apt-get update \
  &&apt-get -y upgrade \
  && apt-get -y autoremove \
  && apt-get -y clean \
  && rm -rf /var/lib/apt/lists/*
