#!/usr/bin/env bash

# Print commands
set -v

# Download and install cloudbase cli
sudo npm i -g @cloudbase/cli --loglevel=error

tcb login --apiKeyId ${{ inputs.secretId }} --apiKey ${{ inputs.secretKey }}
tcb framework deploy -e ${{ inputs.envId }}