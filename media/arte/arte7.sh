#!/bin/sh

if [ -z "$1" ]; then
    echo "Usage: $0 <arte7-url>"
    exit 1
fi

url1=$(curl -s "$1" | grep "vars_player.videorefFileUrl" | sed 's/.*"\([^"]*\)";/\1/g')
url2=$(curl -s "$url1" | grep 'video lang="de"' | sed 's/.*ref="\([^"]*\)".*/\1/g')
url3=$(curl -s "$url2" | grep 'url quality="hd"' | sed 's/<[^>]*>//g')

rtmpdump -W 'http://videos.arte.tv/blob/web/i18n/view/player_18-3188338-data-4921491.swf' -r "$url3" -o "$(basename "$url2" ",view,asPlayerXml.xml").mp4"
