#!/bin/sh

watchmedo shell-command --patterns="*.rst" --wait --command='sh build.sh'
