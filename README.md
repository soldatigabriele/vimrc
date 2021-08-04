# Vim
## Install Macvim

Download MacVim from the [official website](https://macvim-dev.github.io/macvim).

Note: there is an alias for alias mvim that points to the application bin file; this way it can run from the terminal with the `mvim` command.

### Vundle

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

In Mvim run:

```
:PluginInstall
```

### iTerm2
#### Oh My ZSH

```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Add the following line to `~/.zshrc`:

```bash
source ~/.vim/zshrc
```

#### Theme

Change the theme to Agnoster (`ZSH_THEME="agnoster"`) if not already selected.

Fonts for powerline:

```bash
git clone https://github.com/powerline/fonts.git ~/Desktop/fonts &&
sh ~/Desktop/fonts/install.sh &&
sudo rm -R ~/Desktop/fonts
```

Select the font from the terminal.

#### Text Highlight for terminal

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git 
```

#### Autosuggestion


```
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```


add in .zshrc:

plugins=(zsh-autosuggestions)

By default, word jumps (option + → or ←) and word deletions (option + backspace) do not work. To enable these, go to "iTerm → Preferences → Profiles → Keys → Load Preset... → Natural Text Editing → Boom! Head explodes"



### Source in iTerm
By adding the source in .zshrc it will source the file automatically, but we can clean the output by adding the command in the settings.
Add to the field "Send text at start" in iTerm: Pref->Profile->General:

```bash
clear; zen;
```

<h2>UBUNTU</h2>
### install GVIM
sudo apt-get install vim-gnome
### map caps to escape

### Change font
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"

<h2>FIX</h2>
### Vinegar
If it is not going back with - 
Substitute the bundle/vim-vinegar/plugin/vinegar.vim with fix/vinegar.vim 
