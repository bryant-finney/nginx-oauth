#!/bin/sh
# shellcheck shell=sh

# shellcheck disable=SC2016    # the quoting is intentional
test -f "$HOME/.zshrc" && echo 'eval "$(direnv hook zsh)"' >>"$HOME/.zshrc"
test -f "$HOME/.bashrc" && echo 'eval "$(direnv hook bash)"' >>"$HOME/.bashrc"
direnv allow
