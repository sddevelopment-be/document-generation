#!/bin/bash

docker-compose -f ./ops/docker-compose.yml up -d --remove-orphans
docker-compose -f ./ops/docker-compose.yml exec linux sh /root/docGen/scripts/doc_runner.sh documents/document_sample.md document sdd-base
