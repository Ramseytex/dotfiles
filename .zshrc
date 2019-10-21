# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
 DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
plugins=(git git-extras osx ruby )
source $ZSH/oh-my-zsh.sh
# Customize to your needs...
export TERM="xterm-256color"
export LOCAL="/usr/local/bin"
export PATH=$LOCAL:$PATH
#export PATH=$HOME/.rbenv/bin:$PATH
export PATH=${PATH}:/Users/ramseykail/Documents/Dev/android-sdk-macosx/platform-tools
export PATH=${PATH}:/usr/local/Cellar 
export PATH="/usr/local/sbin:$PATH"
export PATH=/usr/local/opt/python/libexec/bin:$PATH
# Initialize rbenv
#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
#eval "$(rbenv init -)"
#alias ssh='TERM=xterm ssh'
source /usr/local/Cellar/zsh-syntax-highlighting/0.6.0/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#autoload -U run-help
#autoload run-help-git
#autoload run-help-svn
#autoload run-help-svk
#unalias run-help
alias help=run-help
alias edit="vim $1"
alias godoc="cd ~/Documents"
alias godev="cd ~/Documents/Dev"
alias fhere="find . -name "
alias histg="history | grep"
alias top="htop"
alias cl="clear"
alias myip="curl http://ipecho.net/plain; echo"
DEFAULT_USER='Ramsey'
# change prompt
prompt_context() {
  prompt_segment black default  "  🤖  "
}
