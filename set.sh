#!/usr/bin/env bash

# Trace commands
set -x

tput setaf 2; echo "####### Download and install cloudbase cli ######"
sudo npm i -g @cloudbase/cli --loglevel=error

tput setaf 2; echo "####### Login in ################################"
tcb login --apiKeyId "$1" --apiKey "$2"

tput setaf 2; echo "####### Deploy to cloudbase #####################"
tcb framework deploy -e "$3"
