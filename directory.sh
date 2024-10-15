#! /bin/bash

if [ $# -eq 0];then
echo "usage :$0 <directory>"
exit 1
fi
directory= "$1"

if [! -d "$directory"];then
echo "$directory is not valid"
exit 1
fi
find "$directory" -type f -exec du -h {}+ | sort -hr
