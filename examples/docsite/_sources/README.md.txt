![SD Development DocGen Banner](./images/sdd_docgen.png)

<!-- vim-markdown-toc GFM -->

* [About](#about)
* [Releases](#releases)
  * [Docker Images](#docker-images)
  * [Sources and Examples](#sources-and-examples)
* [Purpose](#purpose)
  * [Repository structure](#repository-structure)
* [Usage](#usage)
* [Tech Stack](#tech-stack)
* [Acknowledgements](#acknowledgements)
  * [FOSS Projects](#foss-projects)
  * [Contributors](#contributors)
* [Change History](#change-history)
* [Showcase videos](#showcase-videos)

<!-- vim-markdown-toc -->

# About
Dockerized markdown to document generator. 

The value of documenting your work is not often debated.
Good documentation helps you, your current teammates, and those that might join your project 
in the future, to have a clear idea of the things they should know.
It is basically the _"pay it forward"_ principle, but for knowledge workers.

* Example generated documents can be found here: [./examples/](../examples/)
* A detailed guide on writing good documentation can be found here: [writethedocs.org](https://www.writethedocs.org/guide/writing/beginners-guide-to-docs/)
* If you want to know more about writing documents in MarkDown, take a look at the [GitHub Markdown Guides](https://guides.github.com/features/mastering-markdown/)
* Details and tech stack in the description.


**Quick links:**   [CONTRIBUTING](CONTRIBUTING.md) \\ [CHANGELOG](CHANGELOG.md) \\ [DCO](DCO.md) \\ [USAGE](USAGE.md)

# Releases

## Docker Images
Docker images are automatically pushed to DockerHub.
Check out the latest version here: [DockerHub Releases](https://hub.docker.com/repository/docker/sddevelopmentbe/docgen/general)

## Sources and Examples
The sources and examples used to create and test the container Releases
can be found on our [github releases page](Releases are powered by tagging specific points of history in a repository. )

# Purpose

As software development professionals, we are often asked to write down documentation to detail what we did or how we did it. Most developers I know dislike using tools for "normal people" to  achieve this goal. We prefer to write our specs and documentation close to our code (same editor, or using terminal editors).

This video is shareable set-up using open-source software, libraries, and templates to convert your Markdown files into fancy looking documents.

## Repository structure

* [**documents:**](../documents) Contains some sample documents and images
* [**ops:**](../ops) Dockerfiles and scripts to run the Stack
* [**templates:**](../ops/templates) Collection of template files 
* [**examples:**](../examples) A set of showcase output files 


# Usage

A usage guide is provided in the project documentation folder:
[USAGE.md](USAGE.md)

# Tech Stack

**Generator**
* OS: Ubuntu
* Doc generation stack: pandoc, LaTeX (texLive) + shell script that contains the pandoc command
* Documentation content file: Markdown directory + YAML meta-data file
* FOSS templates and libraries
* Docker and docker-compose

**Text Editors**
* Editor: [NeoVim](https://neovim.io/) with some fancy plugins (unneeded, but I was playing with it recently)

# Acknowledgements

## FOSS Projects

* Ubuntu dockerfile [github](https://github.com/dockerfile/ubuntu)
* Eisvogel Pandoc template [github](https://github.com/Wandmalfarbe/pandoc-latex-template)
* reveal.js [github](https://github.com/hakimel/reveal.js)
* pandoc [github](https://github.com/jgm/pandoc)
* TexLive [website](https://tug.org/texlive/)
* Prosegrinder Pandoc Templates [github](https://github.com/prosegrinder/pandoc-templates)
* PlantUML [website](https://plantuml.com/)
* PlantUML Server [github](https://github.com/plantuml/plantuml-server)
* Drakemor's PlantUML stylsheets [github](https://github.com/Drakemor/RedDress-PlantUML)
* YuzuTech's Kroki [github](https://github.com/yuzutech/kroki)
* Spinx Documentation Website Generator [website](https://www.sphinx-doc.org)
* PyPandoc [github](https://github.com/bebraw/pypandoc)

## Contributors
<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->
<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome

# Change History 

The full changelog can be found in: [./CHANGELOG.md](./CHANGELOG.md).

# Showcase videos
* [Initial version](https://www.youtube.com/watch?v=N_aVZHArSS0)
* [First update](https://www.youtube.com/watch?v=oyBFv_9QFbk)
