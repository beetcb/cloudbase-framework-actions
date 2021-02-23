#!/usr/bin/env bash

# Trace commands
set -x

chalk red bold "####### Download and install cloudbase cli ######"
sudo npm i -g @cloudbase/cli --loglevel=error

chalk red bold "####### Login in ################################"
tcb login --apiKeyId "$1" --apiKey "$2"

chalk red bold "####### Deploy to cloudbase #####################"
tcb framework deploy -e "$3"
