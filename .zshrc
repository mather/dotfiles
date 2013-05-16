#==== completion ====#
fpath=($(brew --prefix)/share/zsh/site-functions $fpath)
autoload -Uz compinit
compinit

#==== PROMPT ====#
#export PS1='[%T %~]%# '
export PROMPT=$'%{\e[0;36m%}[%{\e[0;36m%}%T %1~%{\e[0;36m%}]%{\e[0m%}%# '

#==== alias ====#
alias ls='ls -G'
alias grep='grep --color=auto'
alias delbak="find . -name '*~' | xargs rm -f"

#==== emacs ====#
alias emacs="$(brew --prefix emacs)/Emacs.app/Contents/MacOS/Emacs"
alias kill-emacs='emacsclient -e "(kill-emacs)"'

#==== export ====#
# export PATH=/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/usr/local/git/bin:/usr/texbin:/usr/X11/bin:~/bin
export PATH=~/bin:$PATH

export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

[ -r ~/.zsh_vcs_info ] && source ~/.zsh_vcs_info
[ -r ~/.zsh_path ] && source ~/.zsh_path
