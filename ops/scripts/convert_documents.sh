#!/bin/bash

echo "Building documents"
echo ''
echo '> document_sample.md [sdd-base] '
docker-compose -f ./ops/docker-compose.yml exec -T linux sh /root/docGen/scripts/doc_runner.sh documents/document_sample.md document sdd-base

echo '> slidedeck.md [eisvogel]'
docker-compose -f ./ops/docker-compose.yml exec -T linux sh /root/docGen/scripts/slide_runner.sh documents/slidedeck/docGen-slidedeck.md docgen_slides eisvogel

echo '> slidedeck.md [reveal.js SDD]'
docker-compose -f ./ops/docker-compose.yml exec -T linux sh /root/docGen/scripts/slide_web_runner.sh documents/slidedeck/docGen-slidedeck.md docgen_slides markdown_github

echo '> formal_document.md [simple_template, sdd_template]'
docker-compose -f ./ops/docker-compose.yml exec -T linux bash /root/docGen/scripts/formal_document.sh documents/fancy_document.md formal_document

echo '> formal_document.md [sphinx website]'
mkdir -p output/docsite
docker-compose -f ./ops/docker-compose.yml exec -T linux sphinx-build -b dirhtml docs output/docsite
echo '-=[ DONE ]=-'
