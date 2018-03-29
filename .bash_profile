## EXECUTABLES

# pyenv + rvenb
# if [[ -z $TMUX ]]; then
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
# export PYENV_VIRTUALENV_VERBOSE_ACTIVATE=0
# export VIRTUAL_ENV_DISABLE_PROMPT=1
# eval "$(rbenv init -)"
# fi

# export N_PREFIX="$HOME/.n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# nvm use default

export PATH="$HOME/.cargo/bin:$PATH"

## COLORS

# custom shell prompt
# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h \[\033[m\]\$ " # djp@host $
export PS1="\[\033[36m\]\u\[\033[m\]:\[\033[32m\](\W) \[\033[m\]\$ "
# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33m\]\W\[\033[m\]\$ " # djp@host:basename $
# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33m\]\w\[\033[m\]\$ " # djp@host:wd $
export TERM='xterm-color'
# custom colors for ls (see `man ls`) dir, symlink, socket, pipe, executable, block, char, ex, ex, dir, dir
export LSCOLORS="gxfxcxdxbxegedabagaced"
export CLICOLOR=1

# Colorized + human readable ls
alias ls='ls -GFh'
alias lsa='ls -GFhal'


## SHELL OPTIONS

# Erase duplicates in history
export HISTCONTROL=erasedups
# Store 10k history entries
export HISTSIZE=10000
# Append to the history file when exiting instead of overwriting it
shopt -s histappend

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi


## ALIASES

alias wat='python -m pdb -c continue'
alias fuck='sudo $(history -p !!)'
alias npmls='npm list --depth=0'
alias npmlsg='npm list -g --depth=0'
# Manage dotfiles: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
alias dotconfig='git --git-dir=$HOME/dev/dotfiles --work-tree=$HOME'


## MAPBOX
source "$(npm root -g)/@mapbox/mbxcli/bin/mapbox.sh"


## OTHER

# Remove duplicates from PATH
if [ -n "$PATH" ]; then
  old_PATH=$PATH:; PATH=
  while [ -n "$old_PATH" ]; do
    x=${old_PATH%%:*}       # the first remaining entry
    case $PATH: in
      *:"$x":*) ;;         # already there
      *) PATH=$PATH:$x;;    # not there yet
    esac
    old_PATH=${old_PATH#*:}
  done
  PATH=${PATH#:}
  unset old_PATH x
fi
