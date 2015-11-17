#!/bin/bash

file=$1

if [ "$#" -ne 1 ]; then
    file="rawlist"
fi

cat src.html > index.html
echo "<script>data = \"$(cat $file|cut -d'=' -f2|base64 -w 0)\", namesd = \"$(cat $file|cut -d'=' -f2|base64 -w 0)\"</script></body></html>" >> index.html
