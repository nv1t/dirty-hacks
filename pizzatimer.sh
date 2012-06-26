#!/bin/bash
sec=$1; while [ $sec -gt 0 ]; do echo -en "\r${sec}"; sec=$(($sec-1));sleep 1; done;
