#!/bin/bash

if [ ! $# -eq 2 ]
  then
    echo "Usage: ./fill_template.sh <template> <dest>"
    echo ""
    echo "template: the template file"
    echo "dest: the destination file"
    exit 1
fi

#Read file, replace and write to target
sed "s|{platform}|$platform|;s|{release_tag}|$release_tag|;s|{release_url}|$release_url|;s|{jcef_url}|$jcef_url|;s|{release_download_url}|$release_download_url|" $1 > $2