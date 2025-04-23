#!/bin/bash

cd $WIKI_DIR

# Generate allFiles.json
node .scripts/js/extractFM.js

# Hugo
rm -rf docs
hugo -d docs --quiet
