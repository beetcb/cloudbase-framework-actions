#!/usr/bin/env bash

# Print commands
set -v

# Download and install cloudbase cli
sudo npm i -g @cloudbase/cli --loglevel=error

# Login in
tcb login --apiKeyId "$1" --apiKey "$2"

# Deploy to cloudbase
tcb framework deploy -e "$3"
