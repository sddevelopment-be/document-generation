#
# SD Development: Dockument generation stack
# DockerFile based on Ubuntu core image
#

FROM ubuntu:latest

LABEL be.sddevelopment.docgen.version="0.1.0-alpha"
LABEL vendor1="DEJONGH STIJN, software development"
LABEL be.sddevelopment.docgen.release-date="2021-01-24"
LABEL be.sddevelopment.docgen.is-production="false"

# Set up directories
RUN \
      mkdir \
      /root/docGen \
      /root/docGen/documents \
      /root/docGen/output

ADD scripts /root/docGen/scripts
ADD templates /root/docGen/templates

ENV TZ=Europe/Brussels
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install required software on server instance
RUN apt-get update && apt-get install -y \
  ssh \
  git \
  pandoc \
  texlive-latex-base \
  texlive-fonts-recommended \
  texlive-fonts-extra \
  texlive-latex-extra

RUN wget https://raw.githubusercontent.com/Wandmalfarbe/pandoc-latex-template/master/eisvogel.tex \
      && mv eisvogel.tex /root/docGen/templates/eisvogel.latex
RUN cp /root/docGen/templates/* /usr/share/pandoc/data/templates

WORKDIR /root/docGen

CMD ["bash"]
