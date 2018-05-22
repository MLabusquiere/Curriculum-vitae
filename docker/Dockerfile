#: title  : mlab.io/xelatex
#: author : "Maxence Labusquiere" <labusquiere@gmail.com>
#: version: "0.0.0"
FROM debian:9
MAINTAINER labusquiere@gmail.com

ENV DEBIAN_FRONTEND noninteractive

# Install all TeX and LaTeX dependences
RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
  git \
  ca-certificates \
  inotify-tools \
  lmodern \
  make \
  texlive-fonts-recommended \
  texlive-generic-recommended \
  texlive-lang-english \
  texlive-lang-portuguese \
  texlive-xetex \
  texlive-fonts-extra \
  texlive-bibtex-extra \
  biber \
  fonts-font-awesome && \
  apt-get autoclean && apt-get --purge --yes autoremove && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Export the output data
WORKDIR /data
VOLUME ["/data"]

