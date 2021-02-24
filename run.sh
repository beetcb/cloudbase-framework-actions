#!/usr/bin/env bash

ID="$1"
KEY="$2"
ENV="$3"

# Trace commands
trace() {
    echo -e "::group::$2"
    echo -e "\e[32m› $1"
    eval "$1"
    echo "::endgroup::"
}

trace "sudo npm i -g @cloudbase/cli --loglevel=error | grep "@cloudbase/cli"" "\e[36m####### Download and install cloudbase cli ######"

trace "tcb login --apiKeyId "$ID" --apiKey "$KEY" | grep "登录"" "\e[36m####### Login in ################################"

trace "tcb framework deploy -e "$ENV"" "\e[34m####### Deploy to cloudbase #####################"
