#!/bin/bash

echo "Generating diff..."
diff -rq ./new_icons ~/Projects/design-system/packages/icon-library/src/assets/icons > icon_diff.txt
cat icon_diff.txt | grep Only > icon_diff_only.txt
