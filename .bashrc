#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='lsd'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias zzz='systemctl suspend'
alias vim='nvim'
alias emacs="emacsclient -c -a 'emacs'"
PS1='[\u@\h \W]\$ '

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi

export PATH=/home/tyler/pico-8:$PATH
export PATH="$HOME/.emacs.d/bin:$PATH"
export QT_STYLE_OVERRIDE=kvantum

eval "$(starship init bash)"
