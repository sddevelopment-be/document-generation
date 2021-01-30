#!/bin/bash

echo ''
echo "<(^v^> -{ Starting docker containers }"
docker-compose -f ./ops/docker-compose.yml stop
docker-compose -f ./ops/docker-compose.yml up -d --remove-orphans

echo ''
echo "<(^v^> -{ Converting documents }"
sh ./ops/scripts/convert_documents.sh

echo ''
echo "<(^v^> -{ Converting documents }"
sh ./ops/scripts/copy_examples.sh

echo ''
echo '---------------------------------------------------'
echo "<(^v^> -{ Conversion COMPLETE... Have a nice day! }"
echo '---------------------------------------------------'
echo ''
echo ''
