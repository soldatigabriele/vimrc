# ---------- START ZSHRC ------------

ZSH_THEME="agnoster"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=28

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Disable autocorrection prompt
unsetopt correct_all

# solves a problem with iterm2 when pressing tab to complete a folder
#set completion-ignore-case on 

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
#  git osx zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# ---------- END ZSHRC --------------

# Not sure if we need this. We should add in the ~/.ssh/config file the keys
# to be used for each host. Maybe this will prevent problems on ubuntu/mac?
# ssh-add -K ~/.ssh/do_rsa

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PATH="$HOME/.composer/vendor/bin:$PATH"
# Path to PHP 7.2
function php72(){
    export PATH="/usr/local/opt/php@7.2/bin:$PATH"
    export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
}
function php74(){
    export PATH="/usr/local/opt/php@7.4/bin:$PATH"
    export PATH="/usr/local/opt/php@7.4/sbin:$PATH"
}
function php81(){
    export PATH="/usr/local/opt/php@8.1/bin:$PATH"
    export PATH="/usr/local/opt/php@8.1/sbin:$PATH"
}
# Path to Go
export PATH=$PATH:/usr/local/go/bin:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)
# Node Version Manager
export NVM_DIR=~/.nvm
# (this is very slow. Add it only if needed)
# source $(brew --prefix nvm)/nvm.sh

# Install macvim
alias mvim="/Applications/MacVim.app/Contents/bin/mvim"

# cd into code from everywhere
export CDPATH="$HOME/code"

source /Users/gabriele/.vim/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# List all the aliases in this file
alias aliases='cat ~/.vim/zshrc|grep alias'

# enable vi mode in terminal
#bindkey -v

# List files with size human readable
alias ducks='du -cksh * | sort -hr | head -n 15'
alias a='ls -Fhla'
alias ll='ls -FhlSG'
alias ofd='open_command $PWD'

# Vim and Terminal config
alias zshrc="mvim ~/.vim/zshrc"
alias cdvim='cd ~/.vim'
alias sz='source ~/.vim/zshrc'

# WOL
alias wol='wakeonlan 04:42:1A:EB:D4:2B'

## Aliases GIT
alias diff='git diff'
alias stash='git stash save '
alias stasha='git stash apply '
alias stashp='git stash pop '
alias stashl='git stash list'
alias sa='stasha'
alias sl='stashl'
alias sp='stashp'

alias gs='git status'
alias gl='git log --oneline --max-count=14'
alias glg='git log --oneline --graph'
alias gb='git branch'
alias gbv='git branch -v'
alias gbr='git branch -r'
alias ga='git add .'
alias gap='git add -p'
alias pull='git pull'
alias push='git push'
alias gf='git fetch && git checkout '
alias fetch='gf'
alias gc='git commit -m '
alias nb='git checkout -b '
alias cb='git checkout '
alias bd='git branch -d '
alias bm='git checkout master'

# Aliases GLOBUS
alias fresh='php artisan migrate:fresh --database mysql-tests && php artisan migrate:fresh'
alias product='php artisan products:sync 121260 8777'
alias products='php artisan products:sync'
alias cats='php artisan categories:sync'
alias refresh='fresh && cats && product'

# Aliases Docker
alias dc='docker-compose'
alias di='docker images --format "{{.ID}}\t{{.Size}}\t{{.Repository}}" | sort -k 2 -h'
alias alpine='docker run -p 4000:8080 -v $(pwd):/var/www/html trafex/alpine-nginx-php7'

# PHPMetrics
alias pm='php ~/.composer/vendor/bin/phpmetrics --report-html=../phpmetrics . --exclude="vendor","history","tests" && open ../phpmetrics/index.html'

# System
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Digital Ocean
#alias ldo='ssh root@178.62.47.7'
# ubuntu 20
#alias ldo='ssh root@134.209.18.172'
alias ldo='ssh root@159.65.28.216'

# Macbook2011
alias macbook='ssh gabri@192.168.1.104'
function macbook2011 () {
    eval "$(curl --silent http://178.62.47.7:3200/ip/latest | python -c "import sys,json; print 'ssh gabri@' + json.load(sys.stdin)['address']")"
}

# R5 Ubuntu
function r5 () {
    eval "$(curl --silent http://178.62.47.7:3200/ip/latest | python -c "import sys,json; print 'ssh gabri@' + json.load(sys.stdin)['address'] + ' -p 23'")"
}

# Benchmarks
# benchmark http://localhost.com/etc
alias benchmark='ab -t 10 -c 10'

# Aliases Laravel
alias cda='composer dump-autoload' 
alias pa='php artisan' 
alias pat='php artisan tinker' 
alias ql='php artisan queue:listen --tries=3' 
alias pacc='php artisan config:cache'
alias dr='cda && php artisan config:clear && php artisan migrate:refresh --seed'

# Testing
alias pad='php artisan dusk' 
alias dusk='php artisan dusk --filter=' 
alias padf=dusk 
alias phpunit='vendor/bin/phpunit' 
alias tt='vendor/bin/phpunit' 
alias ttf='vendor/bin/phpunit --filter' 
# Tested on M1
alias coverage='XDEBUG_MODE=coverage ./vendor/bin/phpunit'

# Composer
alias lint='~/.composer/vendor/bin/phpcs'

# Print if the zshrc is sourced
function sourced {
    echo '
                                                              -osss+`                               
                                                        `--``os:-::/yo//:`                          
                                               -/     /oo//oo/-.-:::::::+h-                         
                                              /sh-`.+s/-.........-::::::::yo`                       
                                             `h-:+++:-.://----+yyo:::::::::+y+`                     
                                             .y......-ys/+yyhhy++hd/::::///::/so`                   
                                             -d:..-:oy:.........--/sssyyyyydy::/h.                  
                                            `h/ssyoo/...........::---------dh:::+y                  
                                            `h:od::+/.........../o+------:hy:::::d`                 
                                             -hm:.................-------/yo:::::h`                 
                                             .N/..od-..../....:++:-------:+oyo::+s                  
                                             yy...dm-..-s+...-/+ydo------/+osys:h.                  
            -+ooo:                          .N/...-:../ho........-/------/+oosdh+                   
          .ys:--:d-                         :N-......oN+..........-------//o/yms                    
         .h/....-d:                         /N.......-yh-.........--------/-/dd.                    
         /h.....ss                          -N-..-.....-.....-yy/------------:dy                    
         :h....-d-                          `m+.ys:-----:::///:oms-----------+m+                    
         `y+.---sy.                          +d./y+/:-...--:/oo/+o-------/+shy/                     
      .-:/odo:---/ss-                        `hs...-:/+ooso+/-..--------smo/.`                      
    :so::--:/+oso/-:ss.                       `ys.....+so-.....-------+hy-                          
   .d-.........-:oy--/y/.`                     `+y:...........-----:odhso+:.`                       
   `y/.-////:-.---h/--/ddyso+/::-----------:::/++ydy/-.......-----/+od/:::+dys/-                    
    .ds+/::/+ooo+ss----hydyyyyyyyyyyyyyyyyyyyyyyyyhy+oso/::::------+h+::::ydsyyhyo:`                
    s+.........-/ss:--+y:dyssssssssssssssssssssssshy-::oyhyso+//+oys/::::ydysssssyhhs:`             
    /s+-:///::--..+y-+d:-hysssssssssssssssssssssssyd+:::::/+oooo+/:::::sdhssssssssssyhy+-           
     -do////++ooosh/-+h-:msssssssssssssssssssssssssyhy::::::::-:::-/+yhhyssssssssssssssyhs:         
     +y-........-/d--h/-yhsssssssssssssssssysssssssssm/:::::::/+oshhhyyssssssssssssssssssyhy:       
     `ohyo+/////+so/y+:yhsssssssssssssssyyhdssssssssym:::::::/dhhyyssssssssssssssssssssssssyhy-     
       .+ssssssossss/ohyssssssssyyyhhyys+/yhssssssssyh::::::-ymysssssssssssssssssssssssssssssyho`   
          `.----:+ooyhyyyyyyyyyso+/:..`   dhssssssssds::::::-ddsssssssssssssssssssssssssssssssshh:  
                     `````````           `mhssssssssm/:::::::mhsssssssssssyyssssssssssssssssssssyd+ 
                                         `mhsssssssyN:::::::+myssssssssssssyhhyysssssssssssssssssyd+
                                         `mhsssssssyd-::::::smyssssssssssssssyhddyhhhyyyssssssssssyd
   
'
    echo "Zshrc sourced correctly!"
}


# Forecast
alias wm="curl -4 wttr.in/Manchester"
function weather () {
    curl -4 wttr.in/$1; 
}

db () {
   [ ! -f .env ] && { echo "No .env file found."; exit 1; }

   DB_CONNECTION=$(grep DB_CONNECTION .env | grep -v -e '^\s*#' | cut -d '=' -f 2-)
   DB_HOST=$(grep DB_HOST .env | grep -v -e '^\s*#' | cut -d '=' -f 2-)
   DB_PORT=$(grep DB_PORT .env | grep -v -e '^\s*#' | cut -d '=' -f 2-)
   DB_DATABASE=$(grep DB_DATABASE .env | grep -v -e '^\s*#' | cut -d '=' -f 2-)
   DB_USERNAME=$(grep DB_USERNAME .env | grep -v -e '^\s*#' | cut -d '=' -f 2-)
   DB_PASSWORD=$(grep DB_PASSWORD .env | grep -v -e '^\s*#' | cut -d '=' -f 2-)

   DB_URL="${DB_CONNECTION}://${DB_USERNAME}:${DB_PASSWORD}@${DB_HOST}:${DB_PORT}/${DB_DATABASE}"

   echo "Opening ${DB_URL}"
   open $DB_URL
}

# Manually source the powerline if in Ubuntu environment and it is installed
if [ -f /usr/share/powerline/bindings/zsh/powerline.zsh ]; then
	source /usr/share/powerline/bindings/zsh/powerline.zsh
fi

# export PATH=/opt/homebrew/bin:/usr/local/opt/php@7.2/bin:/usr/local/opt/php@7.3/sbin:/usr/local/opt/php@7.3/bin:/Users/gabri/.composer/vendor/bin:/usr/local/opt/php@7.2/bin:/usr/local/opt/php@7.3/sbin:/usr/local/opt/php@7.3/bin:/Users/gabri/.composer/vendor/bin:/usr/local/opt/php@7.2/bin:/usr/local/opt/php@7.3/sbin:/usr/local/opt/php@7.3/bin:/Users/gabri/.composer/vendor/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/bin:/usr/local/go/bin:/bin:/usr/local/go/bin:/bin

# M1 Macbook stuff
# Nice arm alias for running commands with x86_64 architecture flags (M1 mac)
arm() {
  arch -x86_64 $@
}

password(){
    for i in {1..5}
    do
        RAND=$(openssl rand -base64 32)
        echo ""
        echo $RAND | openssl md5
    done
    echo ""
}

zen(){
    echo $(curl -s https://api.github.com/zen)
}
# Export python 3.7 to develop old stuff. If not installed run: $ arm brew install python@3.7
# export PATH="/usr/local/opt/python@3.7/bin:$PATH"
# Export python 3.8 to develop old stuff. If not installed run: $ arm brew install python@3.8
# export PATH="/usr/local/opt/python@3.8/bin:$PATH"

# The next 3 lines are for using pyenv to switch version of Python, it's like NVM but for pithon, use this as of 2025
#
# pyenv versions <- check installed
# pyenv install 3.11 <- install a version
# pyenv global 3.11 <- set it as current
#
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init - zsh)"' >> ~/.zshrc

# Zoxide
eval "$(zoxide init --cmd cd zsh)"
eval "$(fzf --zsh)"
