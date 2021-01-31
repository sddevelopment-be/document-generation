#!/bin/bash

echo ''
echo '-----------------------------------------------------'
echo '<(^v^)> -{ Converting plain text to fancy documents }'
echo '-----------------------------------------------------'

echo ''
echo "<(^v^)> -{ Starting docker containers }"
docker-compose -f ./ops/docker-compose.yml stop
docker-compose -f ./ops/docker-compose.yml up -d --remove-orphans


echo ''
echo "<(^v^)> -{ Converting documents }"
sh ./ops/scripts/convert_documents.sh

echo ''
echo "<(^v^)> -{ Converting documents }"
sh ./ops/scripts/copy_examples.sh

echo ''
echo "<(^v^)> -{ Converting diagrams }"
./ops/scripts/convert_diagrams.sh

echo ''
echo '----------------------------------------------------'
echo "<(^v^)> -{ Conversion COMPLETE... Have a nice day! }"
echo '----------------------------------------------------'
echo ''
echo ''
