#!/bin/bash

FILES=~/Projects/material-design-icons/src/**/**/materialicons/24px.svg
TARGET=./new_icons

for f in $FILES
do
  echo "Processing $f file..."

  PARENT=$(dirname $f)
  GRANDPARENT=$(dirname $PARENT)
  GRANDPARENT_BASENAME=$(basename $GRANDPARENT)
  GREATGRANDPARENT=$(dirname $GRANDPARENT)
  GREATGRANDPARENT_BASENAME=$(basename $GREATGRANDPARENT)
  NEW_FILENAME="${GRANDPARENT_BASENAME//_/-}.svg"

  #echo "$TARGET/$GREATGRANDPARENT_BASENAME/$NEW_FILENAME"

  mkdir -p $TARGET/$GREATGRANDPARENT_BASENAME
  mv $f $TARGET/$GREATGRANDPARENT_BASENAME/$NEW_FILENAME
done
