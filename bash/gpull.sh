#!/bin/bash

original_dir=$(pwd)
for dir in */; do
    if [[ -d "$dir" ]]; then
    	echo -e "\n$(tput rev)Entering folder: $dir $(tput sgr0)"
        cd "$dir"
        git pull
        cd "$original_dir"
    fi
done
