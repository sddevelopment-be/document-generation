#!/bin/bash

pandoc documents/style.yaml $1 -o output/$2-$(date +%F).pdf --from markdown --template $3  --number-sections --listings --highlight-style pygments
