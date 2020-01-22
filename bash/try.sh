#! /bin/bash

echo "setgid files"

echo "========="

find / -type f -executable -perm -2000 -ls 2>/dev/null | sort -k 3
echo ""
