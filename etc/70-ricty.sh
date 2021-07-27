#!/bin/bash

set -eu

DOT_ROOT="$(cd $(dirname $0)/.. && pwd)"
source "${DOT_ROOT}/script/utils.sh"
source "${DOT_ROOT}/dot/bash/inits/50-brew.sh"

echo
echo_info "ricty"
echo_info "Installing generated Ricty fonts..."
run_verbosely cp -f $(brew --prefix)/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
run_verbosely fc-cache -vf
