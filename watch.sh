#!/usr/bin/env zsh

# This script is used to monitor the Reth metrics endpoint
while true; do date; curl -s localhost:9000 | grep -Ev '^(#|$)' | sort; echo; sleep 10; done
