#!/bin/bash

docker build -t sddevelopment-be/docgen:$1 -t sddevelopment-be/docgen:latest -t docgen:latest .
