#!/bin/bash

if [[ $(dunstctl is-paused) == "false" ]]
then
  polybar-msg hook dunst-toggle 1
  dunstctl set-paused true
else
  polybar-msg hook dunst-toggle 2
  dunstctl set-paused false
fi
