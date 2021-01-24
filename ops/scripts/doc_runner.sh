#!/bin/bash

pandoc documents/style.yaml $1 -o output/$2-$(date +%F).pdf --from markdown --template $3.latex  --number-sections --listings --highlight-style pygments

pandoc documents/style.yaml $1 -o output/$2-$(date +%F).docx --from markdown --to docx --template $3.latex  --number-sections --listings --highlight-style pygments
