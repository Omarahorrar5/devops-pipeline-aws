#!/bin/bash
set -e

cd "$(dirname "${BASH_SOURCE[0]}")"

KEY="$HOME/.ssh/testkey"
USER="ubuntu"
IP=$(terraform output -raw dev_ip)

echo "Connecting to $USER@$IP ..."
ssh -i "$KEY" "$USER@$IP"