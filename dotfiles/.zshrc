[[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]] && \
source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
source ${ZDOTDIR:-~}/.zplugins/p10k.zsh

[[ -d ${ZDOTDIR:-~}/.antidote ]] || \
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote

source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load

alias reload='exec zsh'

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'
alias -g cd..='cd ..'

alias la='ls -laa'
alias ldot='ls -ld .*'
(( $+commands[exa] )) && alias ls="exa -lh --icons  --time-style=long-iso --group-directories-first --sort=name --sort=ext"
(( $+commands[exa] )) && alias tree="exa --icons --tree"
(( $+commands[bat] )) && alias cat="bat --style=plain"

