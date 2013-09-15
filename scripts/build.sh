#!/bin/sh

make clean
make html
sleep 1
osascript -e 'tell application "Google Chrome" to reload active tab of window 1'
