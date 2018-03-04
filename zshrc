# Path to your oh-my-zsh installation.
export ZSH=/Users/gabri/.oh-my-zsh
source ~/.bash_profile; clear;

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=3

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
 git osx zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# User configuration

alias zshconfig="mvim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


alias gs='git status'
alias gl='git log --oneline'
alias gb='git branch -v'
alias bd='git branch -d '
alias ga='git add .'

alias gc='git add . && git commit -m '
alias nb='git checkout -b '
alias cb='git checkout '
alias bm='git checkout master'

alias push='git add . && git commit -a -m "update" && git push'

function gcp() {
    git add .
    git commit -a -m "$1"
    git push
}


alias sb='source ~/.vim/bash_profile'
alias a='ls -hl'
alias ll='ls -hlSG'
alias scr='cd ~/Desktop/script'
alias cdport='cd /Applications/MAMP/htdocs/Portfolio'
alias cdhome='cd /Users/Gabri/Homestead'
alias cdcode='cd /Users/Gabri/Dropbox/Vagrant/Code' 
alias cd22='cd /Users/Gabri/Dropbox/Vagrant/Code/22group' 
alias cdwp='cd ~/Dropbox/Vagrant/Code/22group/wordpress/wp-content/plugins'
alias cdvim='cd ~/.vim'
alias cdpy='cd ~/Dropbox/python_tutorial'
alias cdtf='cd /Library/Frameworks/Python.framework/Versions/3.5/lib/python3.5/site-packages/tensorflow/models/image'

#aliases SAASMANAGEMENT
alias cdsa='cd /Users/gabriele/code/holiday'
alias code='cd /Users/gabriele/code/'
#holiday live server
alias lho='ssh root@138.68.165.181'
#Ai API live server
alias lai='ssh root@159.65.20.240'
alias dep='bash deploy.sh'


alias pa='php artisan' 
alias pat='php artisan tinker' 
alias cda='composer dump-autoload' 
alias nrd='npm run dev' 
alias mv='php artisan make:view ' 
alias ql='php artisan queue:listen --tries=3' 
alias dr='php artisan migrate:refresh --seed'
alias st='php artisan iseed permission_role,permissions,role_user,roles --force'
alias tt='vendor/bin/phpunit' 
alias ttf='vendor/bin/phpunit --filter' 
alias vs='vagrant ssh' 
alias vh='vagrant halt' 
alias vu='vagrant up' 
alias gw='grunt watch' 
alias jn='jupyter notebook'

alias tf='source ~/tensorflow/bin/activate'
alias tb='tensorboard --logdir=log'

