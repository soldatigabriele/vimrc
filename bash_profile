export BASH_CONF="bash_profile"
export PATH="~/.composer/vendor/bin:$PATH"

alias gs='git status'
alias gl='git log'
alias gb='git branch -v'
alias ga='git add .'

alias gc='git add . && git commit -m '
alias nb='git checkout -b '
alias cb='git checkout '

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
alias cdsa='cd /Users/gabriele/code/coherence'
alias code='cd /Users/gabriele/code/'

alias pa='php artisan' 
alias dr='php artisan migrate:refresh --seed'
alias tt='vendor/bin/phpunit' 
alias ttf='vendor/bin/phpunit --filter' 
alias vs='vagrant ssh' 
alias vh='vagrant halt' 
alias vu='vagrant up' 
alias gw='grunt watch' 
alias jn='jupyter notebook'

alias tf='source ~/tensorflow/bin/activate'
alias tb='tensorboard --logdir=log'


##
# Your previous /Users/Gabri/.bash_profile file was backed up as /Users/Gabri/.bash_profile.macports-saved_2016-09-03_at_14:49:00
##

# MacPorts Installer addition on 2016-09-03_at_14:49:00: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export CUDA_HOME=/usr/local/cuda
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
export PATH="$CUDA_HOME/bin:$PATH"


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

