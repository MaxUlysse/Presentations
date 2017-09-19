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

nextflow run MaxUlysse/compile-beamer --tex MGarcia-20170829-FocusMeeting.tex -profile $PROFILE
nextflow run MaxUlysse/compile-beamer --tex MGarcia-20170920-DNAClub.tex -profile $PROFILE
