FROM nataliabf/containerbase:latest as builder

RUN apt-get update && apt-get -y upgrade \
  && apt-get -y install --no-install-recommends \  
  perl \
  libfontconfig1 \
  python3-pygments \
  texlive-latex-base \
  texlive-extra-utils \
  texlive-latex-extra \
  texlive-publishers \
  texlive-lang-portuguese \
  texlive-fonts-recommended \
  texlive-plain-generic \
  biber \
  chktex \
  latexmk \
  libyaml-tiny-perl \
  liblog-dispatch-perl \
  libfile-homedir-perl \
  libunicode-string-perl

RUN apt-get autoremove -y \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/*

FROM builder as runner

RUN useradd -ms /bin/bash codetex
USER codetex
WORKDIR /home/codetex
ENV HOME /home/codetex
ENV USER codetex
