# Path to your oh-my-zsh installation.
export ZSH=/Users/andrechristoga/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="materialshelloceanic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_UPDATE_PROMPT="true"

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git bower)


# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='sublime'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

## Costum aliases

# Shortified Commands
alias t="tree"
alias p="ping"
alias ls="exa"
alias pg="speed-test"
alias hot="istats"
alias tweet="python ~/Workspace/togavis/main.py"
alias rulus="jekyll serve"
alias romeo="jekyll build && surge _site/"
alias ghrepos="curl -s -i -H 'Authorization: token 5e8d4e96ae4f707594381e1c363f3d8f3aa77487' \
    https://api.github.com/user/repos | grep -o 'https://github.com[^\"]*.git'"

# Built-in Web Server
alias pythonserver="python -m SimpleHTTPServer"
alias phpserver="php -S localhost:8000"

# ZSH Commands
alias reload="source ~/.zshrc"
alias edit="vi ~/.zshrc"

# Directory Commands
alias xampp="cd /Applications/XAMPP/htdocs"

# Git Commands
alias gcam="git add . && git commit -m"

## Git push commands
alias hp="git push && git push heroku master"
alias sp="git push -u origin master && surge"
alias jb="jekyll build && gcam \"Rebuild jekyll\" && git push"
alias np="npm publish && gp"

# alias doublepush="git push origin cordova && git push origin gh-pages"
# alias dp="git push github master && git push bitbucket master"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
