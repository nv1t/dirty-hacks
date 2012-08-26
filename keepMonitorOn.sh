#!/bin/bash

# moves the mouse by 1 pixel right and 1 pixel left, every
# minute to keep the monitor running, without switching 
# to blackscreen

while :;
do
	xte "mousermove 1 0"
	xte "mousermove -1 0"
	sleep 60
done;
