#!/bin/bash

set -e

ln -sf "$(pwd)"/config.ghostty  ~/.config/ghostty/config.ghostty
ln -sf "$(pwd)"/tmux.conf ~/.config/tmux/tmux.conf
ln -sf "$(pwd)"/ghostty.theme ~/.config/ghostty/themes/ghostty.theme
ln -sf "$(pwd)"/.bash_aliases ~/.bash_aliases

