#: title  : mlab.io/xelatex
#: author : "Maxence Labusquiere" <labusquiere@gmail.com>
#: version: "0.0.0"
FROM debian:latest
LABEL MAINTAINER=labusquiere@gmail.com

ENV DEBIAN_FRONTEND=noninteractive
RUN printf "deb http://ftp.fi.debian.org/debian/ buster main contrib non-free\ndeb-src http://ftp.fi.debian.org/debian/ buster main contrib non-free" > /etc/apt/sources.list.d/backports.list

# Install all TeX and LaTeX dependences
RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
  git \
  ca-certificates \
  icc-profiles \
  inotify-tools \
  lmodern \
  make \
  fonts-lato \
  texlive-fonts-recommended \
  # texlive-generic-recommended \
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

