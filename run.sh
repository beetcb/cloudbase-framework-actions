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

trace "sudo npm i -g @cloudbase/cli --loglevel=error | grep "@cloudbase/cli"" "\e[34mDownload and install cloudbase cli"

trace "tcb login --apiKeyId "$ID" --apiKey "$KEY" | grep "登录"" "\e[34mLogin in"

trace "tcb framework deploy -e "$ENV"" "\e[36mDeploy to cloudbase"
