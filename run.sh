#!/usr/bin/env bash

ID="$1"
KEY="$2"
ENV="$3"

# Trace commands
trace() {
    echo -e "\e[32m› $1"
    eval "$1"
}

echo -e "\e[36m####### Download and install cloudbase cli ######"
trace "sudo npm i -g @cloudbase/cli --loglevel=error | grep "@cloudbase/cli""

echo -e "\e[36m####### Login in ################################"
trace "tcb login --apiKeyId "$ID" --apiKey "$KEY" | grep "登录""

echo -e "\e[34m####### Deploy to cloudbase #####################"
trace "tcb framework deploy -e "$ENV""
