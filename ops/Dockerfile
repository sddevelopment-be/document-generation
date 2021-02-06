#
# SD Development: Dockument generation stack
# DockerFile based on Ubuntu core image
#

FROM ubuntu:latest

LABEL be.sddevelopment.docgen.version="0.2.0"
LABEL vendor1="DEJONGH STIJN, software development"
LABEL be.sddevelopment.docgen.release-date="2021-02-06"
LABEL be.sddevelopment.docgen.is-production="false"

# Set up directories
RUN \
      mkdir \
      /root/docGen \
      /root/docGen/documents \
      /root/docGen/output \
      /root/docGen/lib

ADD scripts /root/docGen/scripts
ADD templates /root/docGen/templates

ENV TZ=Europe/Brussels
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install required software on server instance
RUN apt-get update && apt-get install -y \
  apt-utils \
  ssh \
  software-properties-common \
  git \
  pandoc \
  texlive-latex-base \
  texlive-fonts-recommended \
  texlive-fonts-extra \
  texlive-latex-extra

RUN wget https://raw.githubusercontent.com/Wandmalfarbe/pandoc-latex-template/master/eisvogel.tex \
      && mv eisvogel.tex /root/docGen/templates/eisvogel.latex
RUN cp -r /root/docGen/templates/*.latex /usr/share/pandoc/data/templates/


# Python, Sphinx, etc
RUN apt-get update && apt-get install -y \
  python3-dev \
  python3-pip \
  imagemagick \
  python-is-python3

RUN pip3 install --upgrade pip && pip3 --version

RUN pip3 install -U \
      sphinx \
      pypandoc \
      recommonmark

WORKDIR /root/docGen


CMD ["bash"]
