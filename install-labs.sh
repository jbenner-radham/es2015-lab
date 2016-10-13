#!/usr/bin/env sh

for dir in $(ls labs); do
    if [ -f "labs/${dir}/package.json" ]; then
        echo "Installing \"${dir}\" lab..."
        (cd "labs/${dir}" && npm install)
    	echo "\n"
    fi
done
