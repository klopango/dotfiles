export ZSH=/Users/klopango/.oh-my-zsh
ZSH_THEME="materialshelloceanic"
plugins=(git bower)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin"
# export MANPATH="/usr/local/man:$MANPATH"
source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='sublime'
else
  export EDITOR='vim'
fi

## Costum aliases
# Shortified Commands
alias t="tree"
alias p="ping"
alias ls="exa"
alias pg="speed-test"
alias hot="istats"
alias rulus="jekyll serve"
alias romeo="jekyll build && surge _site/"
alias ghrepos="curl -s -i -H 'Authorization: token 5e8d4e96ae4f707594381e1c363f3d8f3aa77487' \
    https://api.github.com/user/repos | grep -o 'https://github.com[^\"]*.git'"
alias vim="sublime"
alias vi="sublime"

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
