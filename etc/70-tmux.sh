#!/bin/bash

set -eu

DOT_ROOT="$(cd $(dirname $0)/.. && pwd)"
source "${DOT_ROOT}/script/utils.sh"

echo
echo_info "tmux"
echo_info "Installing tmux plugin manager called tpm..."
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm