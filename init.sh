#!/bin/sh

git clone --depth=1 https://github.com/nataliafonseca/devcontainers.git ${ZDOTDIR:-~}/devcontainers
mv ${ZDOTDIR:-~}/devcontainers/dotfiles/.zshrc ${ZDOTDIR:-~}/.zshrc
mv ${ZDOTDIR:-~}/devcontainers/dotfiles/.zsh_plugins.txt ${ZDOTDIR:-~}/.zsh_plugins.txt
mv ${ZDOTDIR:-~}/devcontainers/dotfiles/.zsh_plugins.txt ${ZDOTDIR:-~}/.gitconfig
mv ${ZDOTDIR:-~}/devcontainers/dotfiles/.zplugins ${ZDOTDIR:-~}/.zplugins
mv ${ZDOTDIR:-~}/devcontainers/dotfiles/.zfunctions ${ZDOTDIR:-~}/.zfunctions
rm -rf ${ZDOTDIR:-~}/devcontainers
