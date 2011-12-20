# Congratulations, you found my dotfiles repo!
I'm only putting these up here in case my system explodes, or in case I get another urge to go on a dotfile hackfest that goes totally awry and needs some source control rescue. Why the README then? Well, github strongly recommended having one!

## Pre-Requisites
* ZSH (I use 4.3.15, YMMV)
* VCPrompt
* RVM
* Git
* VIM compiled with Ruby Support: http://stackoverflow.com/questions/3794895/installing-vim-with-ruby-support-ruby or MacVim

(If you're only installing the VIM files you can ignore the first 5 pre-reqs)

## Installin'
Simply clone the repo, CD into it. Run

>ruby install.rb

You will be prompted to choose between all/zsh/vim files. It will symlink the files from their current location to your home folder. It won't back up anything you already have existing.. so, yeah, careful!

If you want to install the vim plugins as well, make sure you're using system ruby (in an attempt at automating command-T's native extension compilation, this helps!) then!

>cd _vim
>ruby update_bundle.rb

should work just fine.

### ZSH
you can install the latest zsh with
>brew install zsh
then add /usr/local/bin/zsh to your /etc/shells file (probably using sudo) then run
>chsh -s /usr/local/bin/zsh

basically this prompt shows hostname:directory(branch+*?) (where the +*? denote the state of the working directory in git). tmux configuration with tabs and simple vim-like bindings. autocd and colors and all that. nothing too fancy

### VIM
Pretty minimalist.

#### Plugins
* Command-T
* AckVim
* NerdTREE
* Powerline
* Fugitive
* TComment
* A few syntax files, who even cares about those.

#### Bindings In Normal Mode
* Leader: comma (,) or backslash (\) (I don't pick sides)
* g/  : ack ( directory search shortcut )
* g\* : ack current word
* gn  : next in cabinet
* gp  : previous in cabinet
* gq  : close cabinet
* gc  : Comment line

Leader Stuff

* Leader + fs : Go fullscreen without Lion swoosh effect ( MacVim only )
* Leader + cw : Trim trailing whitespace
* Leader + t  : Command-T file browser
* Leader + fr : Refresh Command-T
* Leader + fb : Command-T buffer list
* Leader + nt : toggle NERDTree

#### Bindings In Insert Mode
* Ctrl + L    : insert hash-rocket (=>)
* Ctrl + K    : insert method-missile (->)
