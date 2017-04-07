export ZSH=/Users/matheus/.oh-my-zsh

ZSH_THEME="zeit"

plugins=(git osx history)

source $ZSH/oh-my-zsh.sh

# TODO: check why this is necessary
export SHELL='/usr/local/bin/zsh'

# path
export PATH=/usr/local/Cellar/openvpn/2.4.1/sbin:$PATH

# npm
alias nis='npm i -S'
alias nig='npm i -g'
alias nid='npm i -D'

# yarn
alias ya='yarn add'
alias yad='yarn add --dev'
alias yag='yarn add --global'
alias yra='yarn run app'
alias yrd='yarn run dev'
alias yrs='yarn run start'
alias yrt='yarn run test'

# misc
alias zeit='cd /Users/matheus/dev/zeit'
alias a='atom .'
alias jqsp='jq .scripts package.json'
alias ezshrc='vi ~/.zshrc && source ~/.zshrc'
alias gcnv='gc --no-verify'
alias spot='spot --exclude dist --exclude app/dist --exclude node_modules'
alias now='/Users/matheus/dev/zeit/now-cli/bin/now.js'

# load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# gpg agent via https://github.com/pstadler/keybase-gpg-github
if test -f ~/.gnupg/.gpg-agent-info -a -n "$(pgrep gpg-agent)"; then
  source ~/.gnupg/.gpg-agent-info
  export GPG_AGENT_INFO
  GPG_TTY=$(tty)
  export GPG_TTY
else
  eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
fi
