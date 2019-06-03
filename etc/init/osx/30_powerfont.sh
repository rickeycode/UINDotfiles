#!/bin/bash

# Stop script if errors occur
trap 'echo Error: $0:$LINENO stopped; exit 1' ERR INT
set -eu

# Load vital library that is most important and
# constructed with many minimal functions
# For more information, see etc/README.md
. "$DOTPATH"/etc/lib/vital.sh

# This script is only supported with OS X
if ! is_osx; then
    log_fail "error: this script is only supported with osx"
    exit 1
fi

#clone
cd ~
git clone https://github.com/powerline/fonts.git --depth=1

# install
cd fonts
./install.sh

# clean-up a bit
cd ..
rm -rf fonts

log_pass "powerfont: installed successfully"
