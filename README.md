# SD Development Document Generator

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-13-orange.svg?style=flat-square)](#contributors)
<!-- ALL-CONTRIBUTORS-BADGE:END --> 
![Build and publish Docker image](https://github.com/sddevelopment-be/document-generation/workflows/Build%20and%20publish%20Docker%20image/badge.svg)


Dockerized markdown to document generator. 
I got tired of writing technical documents in word and confluence.
So I tried to make a flat text to fancy document conversion stack.  

Example generated documents can be found here: [./examples/](./examples/)
Details and tech stack in the description.

**Quick links:** |  [CONTRIBUTING](./docs/CONTRIBUTING.md) | [CHANGELOG](./docs/CHANGELOG.md) |

## Releases

### Docker Images
Docker images are automatically pushed to DockerHub.
Check out the latest version here: [DockerHub Releases](https://hub.docker.com/repository/docker/sddevelopmentbe/docgen/general)

### Sources and Examples
The sources and examples used to create and test the container Releases
can be found on our [github releases page](Releases are powered by tagging specific points of history in a repository. )

## Purpose

As software development professionals, we are often asked to write down documentation to detail what we did or how we did it. Most developers I know dislike using tools for "normal people" to  achieve this goal. We prefer to write our specs and documentation close to our code (same editor, or using terminal editors).

This video is shareable set-up using open-source software, libraries, and templates to convert your Markdown files into fancy looking documents.

### Repository structure

* [**documents:**](./documents) Contains some sample documents and images
* [**ops:**](./ops) Dockerfiles and scripts to run the Stack
* [**templates:**](./ops/templates) Collection of template files 
* [**examples:**](./examples) A set of showcase output files 

### Next steps?

* Add [reveal.js](https://github.com/hakimel/reveal.js/) interactivegration to also generate interactive slidedecks
* Add [structurizr](https://structurizr.com/) integration to draw even nicer diagrams in technical documentation 

## Usage

### Start the containers

Create the docker image.
```bash
cd ./ops
sh build_docker.sh <VERSION>
```
### Run conversion

Start the docker-compose containers and execute the commands showed below.
You can edit the scripts in [ops/scripts/](./ops/scripts/), or add your own.


```bash
docker-compose -f ./ops/docker-compose.yml up -d --remove-orphans
docker-compose -f ./ops/docker-compose.yml exec linux sh /root/docGen/scripts/doc_runner.sh documents/document_sample.md document sdd-base
```

Alternativly, you can use the `convert_documents.sh` script included in this repository's root
to run all the examples. The result of these can be found in your local **./output** directory.

## Tech Stack

**Generator**
* OS: Ubuntu
* Doc generation stack: pandoc, LaTeX (texLive) + shell script that contains the pandoc command
* Documentation content file: Markdown directory + YAML meta-data file
* FOSS templates and libraries
* Docker and docker-compose

**Text Editors**
* Editor: [NeoVim](https://neovim.io/) with some fancy plugins (unneeded, but I was playing with it recently)

## Acknowledgements

* Ubuntu dockerfile [github](https://github.com/dockerfile/ubuntu)
* Eisvogel Pandoc template [github](https://github.com/Wandmalfarbe/pandoc-latex-template)
* reveal.js [github](https://github.com/hakimel/reveal.js)
* pandoc [github](https://github.com/jgm/pandoc)
* TexLive [website](https://tug.org/texlive/)
* Prosegrinder Pandoc Templates [github](https://github.com/prosegrinder/pandoc-templates)

## Change History 

The full changelog can be found in: [./docs/CHANGELOG.md](./docs/CHANGELOG.md).

### Showcase videos
* [Initial version](https://www.youtube.com/watch?v=N_aVZHArSS0)
* [First update](https://www.youtube.com/watch?v=oyBFv_9QFbk)
