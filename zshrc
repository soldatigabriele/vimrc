eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/do_rsa

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PATH="$HOME/.composer/vendor/bin:$PATH"
#export XDEBUG_CONFIG="idekey=VSCODE"

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

# enable vi mode in terminal
bindkey -v

alias zshconfig="mvim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


alias diff='git diff'
alias stash='git add . && git stash'
alias stasha='git stash apply'
alias gs='git status'
alias gl='git log --oneline --graph'
alias gb='git branch -v'
alias ga='git add .'
alias pull='git pull'
alias push='git push'
alias fetch='git fetch && git checkout '

alias gc='git add . && git commit -m '
alias nb='git checkout -b '
alias cb='git checkout '
alias bd='git branch -d '
alias bm='git checkout master'

alias gps='git add . && git commit -a -m "bug fixed" && git push'

function gcp() {
    git add .
    git commit -a -m "$1"
    git push
}


alias sb='source ~/.vim/bash_profile'
alias sz='source ~/.vim/zshrc'
alias a='ls -Fhl'
alias ll='ls -FhlSG'
alias scr='cd ~/Desktop/script'
alias cdport='cd /Applications/MAMP/htdocs/Portfolio'
alias cdhome='cd $HOME/Homestead'
alias cdcode='cd $HOME/Dropbox/Vagrant/Code' 
alias cd22='cd $HOME/Dropbox/Vagrant/Code/22group' 
alias cdwp='cd ~/Dropbox/Vagrant/Code/22group/wordpress/wp-content/plugins'
alias cdvim='cd ~/.vim'
alias cdpy='cd ~/Dropbox/python_tutorial'
alias cdtf='cd /Library/Frameworks/Python.framework/Versions/3.5/lib/python3.5/site-packages/tensorflow/models/image'

##aliases SAASMANAGEMENT
#code
alias code='cd $HOME/code/'
alias buyvia='cd $HOME/code/ProductsWebsites/buyvia'
alias kernel='cd $HOME/code/ProductsWebsites/buyvia/vendor/saas-management/products-kernel'
alias quiz='cd $HOME/code/laravel-quiz'
alias kernellink='ln -s $HOME/code/ProductsWebsites/products-kernel  $HOME/code/ProductsWebsites/buyvia/vendor/saas-management/products-kernel'


#holiday live server
alias lho='ssh root@138.68.165.181'
alias tho='cd $HOME/code/holiday'
#Ai API live server
alias lai='ssh root@159.65.20.240'
alias dep='bash deploy.sh'

alias ldo='ssh root@178.62.47.7'

alias pa='php artisan' 
alias pat='php artisan tinker' 
alias cda='composer dump-autoload' 
alias nir='npm install && npm run dev' 
alias nrd='npm run dev' 
alias nrw='npm run watch' 
alias ql='php artisan queue:listen --tries=3' 
alias pacc='php artisan config:cache'
alias dr='cda && php artisan config:clear && php artisan migrate:refresh --seed'
alias st='php artisan iseed permission_role,permissions,role_user,roles --force'
alias tt='vendor/bin/phpunit' 
alias ttf='vendor/bin/phpunit --filter' 
alias vs='vagrant ssh' 
alias vh='vagrant halt' 
alias vu='vagrant up' 
alias gw='grunt watch' 
#alias Python
alias jn='jupyter notebook'
alias pm='python manage.py'
alias pmr='python manage.py runserver'
alias pmc='python manage.py check'
alias pmsh='python manage.py shell'
alias pmst='python manage.py startapp'

alias tf='source $HOME/tensorflow/bin/activate'
alias dj='source $HOME/.django/bin/activate'
alias tb='tensorboard --logdir=log'

# Print the logs
function ll {
    echo "Printing contents of Laravel Log File"
    echo "Press Ctrl + C to exit"
    echo "Tip: Type 'log.c' to clear contents of Laravel Log File"
    tail -f -n 450 storage/logs/laravel*.log \
    | grep -i -E \
    "^\[\d{4}\-\d{2}\-\d{2} \d{2}:\d{2}:\d{2}\]|Next [\w\W]+?\:" \
    --color 
}

# Plear the logs
function lc {
    echo "Clearing contents of Laravel Log File"
    echo > storage/logs/laravel*.log
}
