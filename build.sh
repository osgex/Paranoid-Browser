#!/bin/bash

rm -rf build/
# Download the latest Firefox, skip if it is already downloaded
wget --content-disposition --directory-prefix=bin --no-clobber 'https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US'
# Get name and extract archive
archive=$(ls bin/*.xz | head -1)
tar xvf $archive
mv firefox build
# Copy Paranoid Browser configuration
cp -r src/* build/
echo Complete