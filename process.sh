#!/bin/bash

file=$1
list2=""

if [ "$#" -ne 1 ]; then
    file="list"
fi

while read txt; do
    list2+=$(wget -O - "https://www.youtube.com/results?search_query=$txt" | grep "watch?" | cut -d'"' -f6 | grep -v list | grep watch | cut -d'=' -f2 | sed -n '1 p')
    list2+=$'\n'
done<<<"$(cat "$file")"

cat src.html > index.html
echo "<script>data = \"$(echo "$list2"|base64 -w 0)\", namesd = \"$(cat "$file"|base64 -w 0)\"</script></body></html>" >> index.html
