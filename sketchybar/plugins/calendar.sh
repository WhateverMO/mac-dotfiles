#!/bin/bash

sketchybar --set $NAME icon="$(LC_TIME=en_US.UTF-8 date '+%a %d. %b')" label="$(date '+%H:%M')"
