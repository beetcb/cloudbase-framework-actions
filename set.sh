#!/usr/bin/env bash

# Trace commands
set -x

echo -e "\e[36m####### Download and install cloudbase cli ######"
sudo npm i -g @cloudbase/cli --loglevel=error

echo -e "\e[36m####### Login in ################################"
tcb login --apiKeyId "$1" --apiKey "$2"

echo -e "\e[34m####### Deploy to cloudbase #####################"
tcb framework deploy -e "$3"
