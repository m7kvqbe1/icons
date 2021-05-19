#!/bin/bash

FILES=./icons/**/*.svg

find_string_height='height="24"'
replace_string_height='height="16"'

find_string_width='width="24"'
replace_string_width='width="16"'

for f in $FILES
do
    echo "Processing $f file..."

    sed -E -i '' "/svg/s/${find_string_height}/${replace_string_height}/" $f
    sed -E -i '' "/svg/s/${find_string_width}/${replace_string_width}/" $f
done
