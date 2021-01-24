# SD Development Document Generator
Dockerized markdown to document generator. 
I got tired of writing technical documents in word and confluence.
So I tried to make a flat text to fancy document conversion stack.  
  
Details and tech stack in the description.

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

Start the docker-compose containers and execute the commands:

```bash
docker-compose -f ./ops/docker-compose.yml up -d --remove-orphans
docker-compose -f ./ops/docker-compose.yml exec linux sh /root/docGen/scripts/doc_runner.sh documents/document_sample.md document sdd-base
```

Alternativly, you can use the `convert_documents.sh` script included in this repository's root.

## Tech Stack

OS: Ubuntu
Doc generation stack: pandoc, LaTeX (texLive) + shell script that contains the pandoc command
Documentation content file: Markdown directory + YAML meta-data file
Editor: NeoVim with some fancy plugins (unneeded, but I was playing with it recently)

## Acknowledgements

## Change History 

### Showcase videos
* [Initial version](https://www.youtube.com/watch?v=N_aVZHArSS0)
