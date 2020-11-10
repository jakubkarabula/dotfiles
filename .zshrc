# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jakub/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# ZSH_THEME="wezm"
# ZSH_THEME="refined"
# ZSH_THEME="michelebologna"
# ZSH_THEME="agnoster"
ZSH_THEME="refined"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  osx
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gd="git diff @{upstream}"
alias gs="git status"
alias gb="git rev-parse --abbrev-ref HEAD | pbcopy"
alias pg="postgres -D /usr/local/var/postgres"
alias gck="git checkout"
alias weather="curl wttr.in/berlin?m"
# gcp() { git commit -m $@ && git push }

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

# DOCKER
dbash () { docker run docker/whalesay cowsay "connecting to $@"; docker exec -it $@ /bin/bash }

export PATH="/Users/jakub/.rvm/gems/ruby-2.4:4@jobz/bin:/Users/jakub/.rvm/gems/ruby-2.4.4@global/bin:/Users/jakub/.rvm/rubies/ruby-2.4.4/bin:/Users/jakub/.rvm/bin:/Users/jakub/.nvm/versions/node/v8.9.1/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/jakub/webdriver:/Users/jakub/.vimpkg/bin:/Users/jakub/.terraform:/Users/jakub/.jenv/bin:/Users/jakub/Library/Python/3.7/bin:/opt/local/bin:/opt/local/sbin:/Users/jakub/bin:/usr/local/share/dotnet:/Users/jakub/.cargo/bin:"

# export PATH="$HOME/.jenv/bin:$PATH"

eval "$(jenv init -)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/Users/jakub/Documents/iglu:$PATH"

export PATH="/Users/jakub/.emacs.d/bin:$PATH"

export LANG=en_UK.UTF-8

bindkey -v

eval $(thefuck --alias)
alias fix=fuck

export LC_ALL=en_US.UTF-8

# history grep
ghi() { history | grep "$@" }

alias ls=lsd

# alias vim=/usr/local/bin/vim
nvm use v10.15.3

alias yb=yarn build
alias ys=yarn start

alias vim=nvim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

tmux

evim () { nvim ~/.config/nvim/init.vim }
export PATH="/usr/local/opt/llvm/bin:$PATH"

export JENV_ROOT="/Users/jakub/.jenv"

if which jenv > /dev/null;
  then eval "$(jenv init -)";
fi

source ~/.secrets.sh 
