#!/bin/bash

cd ~/Downloads

# Create Archive folder if it does not exist
if [ ! -d "Archive" ]; then
    mkdir Archive
fi

# Find files more than 1 day, and not Archive and . path, move to Archive folder
find . -maxdepth 1 -mtime +1 -not -path ./Archive -not -path . -exec mv {} Archive/ \;