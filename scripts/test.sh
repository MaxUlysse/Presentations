#!/bin/bash
set -xeuo pipefail

PROFILE="docker"

while [[ $# -gt 0 ]]
do
  key="$1"
  case $key in
    -p|--profile)
    PROFILE="$2"
    shift
    ;;
    *) # unknown option
    ;;
  esac
  shift
done

for i in `ls -1 *.tex` ; do
  nextflow run MaxUlysse/compile-beamer -profile $PROFILE --tex $i
done
