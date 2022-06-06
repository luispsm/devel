#!/bin/bash

echo "Configuring tmux"

TMUX_CONFIG_DIR="~/.tmux/plugins/"
if [[ ! -d ${TMUX_CONFIG_DIR} ]] ; then
    mkdir -p ${TMUX_CONFIG_DIR}
fi

if [[ ! -d ${TMUX_PLUGINS_DIR} ]] ; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

cat <<EOT >> ~/.tmux.conf
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin '0phoff/gitmux'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
EOT
