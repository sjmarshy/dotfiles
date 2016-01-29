source ~/Developer/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme nanotech

antigen apply


# git
alias g=git

# vim
alias v='vim $(fzf)'

# tmux
alias tls='tmux list-sessions'
alias tat='tmux attach-session -t'
alias trm='tmux kill-session -t'

# npm
alias ni='npm install'
alias ns='npm install --save'
alias nd='npm install --save-dev'
alias ng='npm install --global'

# taskwarrior

# add a task with a particular project set
taskaddwithproject() {
  task add pro:$1 $2
}

taskdelete() {
  task $1 delete
}

taskdone() {
  task $1 done
}

alias t='task'
alias ta='task add'
alias tp='taskaddwithproject'
alias trm='taskdelete'
alias td='taskdone'
alias ts='task sync'

export EDITOR=vim
export NVM_DIR="/Users/sam/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

. `brew --prefix`/etc/profile.d/z.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:/Users/sam/go/bin:/Users/sam/Scripts:$PATH"
export GOPATH=/Users/sam/go


source ~/.dotfiles/export_api_keys
# Hook for desk activation
[ -n "$DESK_ENV" ] && source "$DESK_ENV"

HISTSIZE=10000
SAVEHIST=10000

vagrantwork() {

  cd ~/vagrant-environment && ./work.zsh
}

vagranthome() {

  cd ~/vagrant-environment && ./home.zsh
}

### zsh history back-up

export HISTBACKUP=~/.history-backup/history

exportHistory() {

  FILESIZE=`cat $HISTFILE | wc -l`
  HISTANALYSISFILE=~/.history-backup/analysis

  if [[ $FILESIZE -gt $((9000)) ]]; then

    touch $HISTBACKUP
    cat $HISTFILE >> $HISTBACKUP
    analyseHistory > $HISTANALYSISFILE
    rm $HISTFILE
    echo "zsh history backed up"
  fi
}

exportHistory

### vim mode
#
bindkey -v
export KEYTIMEOUT=1

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word

function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

