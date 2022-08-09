#!/usr/bin/env bash

swaymsg create_output
swaymsg 'output "HEADLESS-1" mode 1500x900'
wayvnc --output=HEADLESS-1 &
