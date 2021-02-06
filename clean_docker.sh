#!/bin/bash

echo ''
echo '+-----------------------------------------+'
echo '| <(^v^)> -{ Starting housekeeping run! } |'
echo '+-----------------------------------------+'
echo ''

echo 'Disk usage:'
docker system dfpython3-sphinx

echo ''
echo 'Running clean command:'
docker system prune

echo ''
echo ''
echo '+-------------------------------------------------------+'
echo '| <(^v^)> -{ Housekeeping complete. Have a great day! } |'
echo '+-------------------------------------------------------+'
echo '   -> Houskeeping results:                              '
docker system df
echo '+---------------------   FIN ---------------------------+'
