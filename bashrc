#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# solves a problem with the rofi launcher
export LC_ALL="C"

# run pfetch at terminal start
pfetch

# use vim mode/keybindings
set -o vi

xset r rate 300 50
