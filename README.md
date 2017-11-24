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

<h3>Powerline terminal</h3>
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
<br>
Change theme to "agnoster"
<br>
https://github.com/powerline/fonts/blob/master/Inconsolata/Inconsolata%20for%20Powerline.otf?raw=true
<br>
https://github.com/powerline/fonts/blob/master/FiraMono/FuraMono-Regular%20Powerline.otf?raw=true
<br>
Double click and install it. Then select it from the iterm2 font.
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

<h3>Bash_profile</h3>
add to the field "Send text at start" in iTerm: Pref->Profile->General
<br>
source ~/.bash_profile; clear;

<h3>UBUNTU</h3>
<h2>install GVIM</h2>
sudo apt-get install vim-gnome
<h2>map caps to escape</h2>

<h2>Change font</h2>
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"

<h3>FIX</h3>
<h2>Vinegar</h2>
If it is not going back with - 
Substitute the bundle/vim-vinegar/plugin/vinegar.vim with fix/vinegar.vim 
