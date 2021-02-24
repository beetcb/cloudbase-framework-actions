#!/usr/bin/env bash

ID="$1"
KEY="$2"
ENV="$3"

# Trace commands
trace() {
    set -x
    eval $1
    set +x
}

echo -e "\e[36m####### Download and install cloudbase cli ######"
trace "sudo npm i -g @cloudbase/cli --loglevel=error"

echo -e "\e[36m####### Login in ################################"
trace "tcb login --apiKeyId "ID" --apiKey "KEY""

echo -e "\e[34m####### Deploy to cloudbase #####################"
trace "tcb framework deploy -e "ENV""
