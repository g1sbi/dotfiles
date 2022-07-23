#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias rm=trash
alias vim=nvim

export QSYS_ROOTDIR="/home/gisbi/.cache/yay/quartus-free/pkg/quartus-free-quartus/opt/intelFPGA/21.1/quartus/sopc_builder/bin"

#terminal settings
force_color_prompt=yes
export PS1="\e[1;31m[\u@\h \W]\$ \e[m"
bind '"\C-l":clear-screen'

#nnn
export NNN_FIFO=/tmp/nnn.fifo
export NNN_PLUG='f:finder;o:fzopen;p:mocplay;d:diffs;t:nmount;v:imgview'
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

#vim mode
set -o vi

#pywal
(cat ~/.cache/wal/sequences &)
