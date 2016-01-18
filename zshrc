source ~/Developer/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle ssh-agent

antigen theme ys

antigen apply

# git
alias g=git

# vim
alias v='vim $(fzf)'

# tmux
alias tls='tmux list-sessions'
alias tat='tmux attach-session -t'
alias gvr='git push origin master --tags && git push origin develop'
alias art='php artisan'

# npm
alias ni='npm install'
alias ns='npm install --save'
alias nd='npm install --save-dev'
alias ng='npm install --global'

export EDITOR=vim
export NVM_DIR="/home/vagrant/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# . `brew --prefix`/etc/profile.d/z.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:/Users/sam/go/bin:home/vagrant/.composer/vendor/bin:$PATH"
export GOPATH=/Users/sam/go

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.dotfiles/export_api_keys
# Hook for desk activation
[ -n "$DESK_ENV" ] && source "$DESK_ENV"

HISTSIZE=10000
SAVEHIST=10000

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
