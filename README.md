# vimrc


<h3>Install Macvim</h3>
use install_mvim.sh
<br>

<h3>Add SSH</h3>
cd ~/.ssh
<br>
ssh-keygen -t rsa -C 'soldati.gabriele@gmail.com'
<br>
cat git_rsa.pub | pbcopy
<br>
<h4>Open Github settings and paste the key</h4>
ssh-add git_rsa.pub
<br>
ssh -T git@github.com
<br>

<h3>Clone</h3>
git clone git@github.com:soldatigabriele/vimrc.git ~/.vim
<br>
git clone https://github.com/soldatigabriele/vimrc.git ~/.vim
<br><br>
<h3>Vundle</h3>
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
<h3>Move the files</h3>
mv .vimrc ~/.vim/vimrc
<br>
mv .gvimrc ~/.vim/gvimrc
<br>
<h3>Create Link</h3>
ln -s ~/.vim/vimrc ~/.vimrc
<br>
ln -s ~/.vim/gvimrc ~/.gvimrc
<br>
ln -s ~/.vim/bash_profile ~/.bash_profile
<br>
ln -s ~/.vim/zshrc ~/.zshrc
<br>

<h3>iTerm2</h3>
<h5>Oh My ZSH</h5>

```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

```

Change the theme to Agnoster (if not already selected)
<br>
Fonts for powerline:
``` 
cd ~/Desktop && git clone https://github.com/powerline/fonts.git && cd fonts
sh ./install.sh && rm -R ~/Desktop/Fonts
```

Select the font from the terminal.

<h5>Text Highlight for terminal</h5>

```
brew install zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

<h5>Autosuggestion</h5>
<br>

```
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

<br>
add in .zshrc:
<br>
plugins=(zsh-autosuggestions)
<br>
By default, word jumps (option + → or ←) and word deletions (option + backspace) do not work. To enable these, go to "iTerm → Preferences → Profiles → Keys → Load Preset... → Natural Text Editing → Boom! Head explodes"
<br>


<h3>CTags problem</h3>

You need "exuberant ctags tool" and you can follow following steps to build your own and install.
<br>
download crags from http://ctags.sourceforge.net
<br>
Extract ctags to a folder ( ex e-ctags )
<br>
Goto that folder ( cd e-crags )
<br>
./configure
<br>
./make
<br>
Once you have the binary you can move it to your bin folder as:
<br>
<br>
sudo mv ctags /usr/bin/ctags-exuberant
<br>
<br>
run mvim and do $ :!ctags -R in order to generate the tags
<br>
<br>
<h4>Install Ag for search within the files</h4>
Necessary to use Grep and Greplace
<br>
brew install the_silver_searcher


<h3>Bash_profile</h3>
add to the field "Send text at start" in iTerm: Pref->Profile->General
<br>
source ~/.bash_profile; clear;

<h2>UBUNTU</h2>
<h3>install GVIM</h3>
sudo apt-get install vim-gnome
<h3>map caps to escape</h3>

<h3>Change font</h3>
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"

<h2>FIX</h2>
<h3>Vinegar</h3>
If it is not going back with - 
Substitute the bundle/vim-vinegar/plugin/vinegar.vim with fix/vinegar.vim 


#### Phpmetrics

Install phpmetrics:

```bash
composer global require 'phpmetrics/phpmetrics'
```

run phpmetrics:

```bash
genny
```


