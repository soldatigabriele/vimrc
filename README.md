# vimrc

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
<h3>Add SSH</h3>
cd ~/.ssh
<br>
ssh-keygen -t rsa -C 'soldati.gabriele@gmail.com'
<br>
cat git_rsa.pub | pbcopy
<br>
<h4>Open Github settings and paste the key</h4>
ssh-add git_rsa
<br>
ssh -T git@github.com
<br>

