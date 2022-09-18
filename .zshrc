autoload -U colors && colors
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
PROMPT="%{$fg[yellow]%}%n%{$reset_color%}@%{$fg[green]%}%m%{$reset_color%}: %{$fg[blue]%}%1~ %{$reset_color%}%# "
RPROMPT="\$vcs_info_msg_0_"
zstyle ':vcs_info:git:*' formats '%b'
alias git='LANG=en_US.UTF-8 git'
alias svgo-folder='svgo --enable=prefixIds --disable=removeViewBox -f .'
alias svgo-file='svgo --enable=prefixIds --disable=removeViewBox'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This load$

export GOPATH=~/work/go
export PATH=$PATH:$GOPATH/bin
