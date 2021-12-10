#!/bin/bash

FILES=./icons/**/*.svg

grep --files-without-match "currentColor" ${FILES} | while read -r FILE ; do
  echo "Processing $FILE"
  # xmlstarlet ed -O --inplace --insert "/svg" --type attr -n currentColor -v fill $FILE > test_output.xml
  # break
done
