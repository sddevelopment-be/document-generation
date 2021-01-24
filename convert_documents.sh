#!/bin/bash

echo "Starting docker containers"
docker-compose -f ./ops/docker-compose.yml up -d --remove-orphans

echo "Building documents"
docker-compose -f ./ops/docker-compose.yml exec linux sh /root/docGen/scripts/doc_runner.sh documents/document_sample.md document sdd-base
docker-compose -f ./ops/docker-compose.yml exec linux sh /root/docGen/scripts/slide_runner.sh documents/slidedeck/docGen-slidedeck.md docgen_slides eisvogel
docker-compose -f ./ops/docker-compose.yml exec linux sh /root/docGen/scripts/slide_web_runner.sh documents/slidedeck/docGen-slidedeck.md docgen_slides markdown_github
