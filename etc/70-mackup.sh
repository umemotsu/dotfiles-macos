#!/bin/bash

set -eu

DOT_ROOT="$(cd $(dirname $0)/.. && pwd)"
source "${DOT_ROOT}/script/utils.sh"
source "${DOT_ROOT}/dot/bash/inits/50-brew.sh"

echo
echo_info "mackup"
echo_info "Creating symlinks to application setting files managed by mackup on the cloud..."
run_verbosely mackup --verbose restore
echo_info "Copying back the setting files to the local machine, as simlinked setting files are no longer supported..."
run_verbosely mackup --verbose uninstall
