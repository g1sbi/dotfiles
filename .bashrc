#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias rm=trash
alias vim=nvim
PS1='\e[1;31m[\u@\h \W]\$ \e[m '

export QSYS_ROOTDIR="/home/gisbi/.cache/yay/quartus-free/pkg/quartus-free-quartus/opt/intelFPGA/21.1/quartus/sopc_builder/bin"

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh


# vim mode

set -o vi

# nnn

NNN_COLORS='#FF0000'

# keybinds

bind '"\C-l":clear-screen'
