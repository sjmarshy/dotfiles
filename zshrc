source ~/Developer/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle ssh-agent

antigen theme arrow

antigen apply


alias g=git
alias v='vim $(fzf)'
alias tls='tmux list-sessions'
alias tat='tmux attach-session -t'
alias gvr='git push origin master --tags && git push origin develop'

export EDITOR=vim
export NVM_DIR="/Users/sam/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# . `brew --prefix`/etc/profile.d/z.sh

cd /var/www
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source export_api_keys
