#!/bin/bash

DOWN=2

COUNT=1
for i in `curl -s $1 | grep "rtmp" | sed 's/.*"\(mp4:[^\?]*\)?.*/\1/g'`;
do
	if [[ $COUNT -eq $DOWN ]]; then
		echo "Download"
		rtmpdump -e --host vod.daserste.de --app ardfs/ --playpath "${i}" -o $2;
	fi
	COUNT=$(($COUNT+1))
done;
