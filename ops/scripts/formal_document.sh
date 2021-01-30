#!/bin/bash

SCRIPT="$(realpath "$0")"
SCRIPT_PATH="$(dirname "$SCRIPT")"

$SCRIPT_PATH/md2long.sh --template sdd_template --output output/$2-$(date +%F).docx --overwrite $1
$SCRIPT_PATH/md2long.sh --template simple_template --output output/SIMPLE_$2-$(date +%F).docx --overwrite $1
