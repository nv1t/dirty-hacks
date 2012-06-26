#!/bin/bash

# Starting two videos on mplayer on tag 3

echo -e "awful.tag.viewonly(tags[mouse.screen][3])" | awesome-client
# erstes wird gestartet
xte "key p";
echo -e "awful.client.focus.byidx( 1)" | awesome-client
xte "key p"
#echo -e "awful.tag.viewonly(tags[mouse.screen][3])" | awesome-client

