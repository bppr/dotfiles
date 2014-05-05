# Congratulations, You Found My Dotfiles Repo!
Let me save myself some time in the future.

## The quick version:
### Mac OSX:

      brew update && brew install zsh vim emacs git chruby
      curl https://raw.github.com/djl/vcprompt/v1.0.1/bin/vcprompt > /usr/local/bin/vcprompt && sudo chmod +x /usr/local/bin/vcprompt
      ruby install.rb
      cd _vim && ruby update_bundle.rb

### Linux

I automated this with Chef / Vagrant, so... you're outta luck.

## Deps
Versions listed are my current versions. YMMV.
* zsh (~5.0.5)
* tmux (~1.9)
* emacs (~24.3.1)
* vim (~7.4, compiled with Ruby support: try `vim-nox` debian recipe, or `vim` brew recipe)
* git (~1.9)
* [chruby](https://github.com/postmodern/chruby) (~0.3.8)
* [chgems](https://github.com/postmodern/chgems) (~0.3.2)
* vcprompt ([more](#vcprompt))

## Installin'
Simply clone the repo, CD into it. Run

    ruby install.rb

You will be prompted to choose between all/zsh/vim files. It will symlink the files from their current location to your home folder. It won't back up anything you already have existing.. so, yeah, careful!

If you want to install the vim plugins as well, make sure you're using system ruby (in an attempt at automating command-T's native extension compilation, this helps!) then!

    cd _vim && ruby update_bundle.rb

should work just fine.

### ZSH
you can install the latest zsh with

    brew install zsh

then add /usr/local/bin/zsh to your /etc/shells file (probably using sudo) then run

    chsh -s /usr/local/bin/zsh

Prompt shows hostname:directory(branch+*?) (where the +*? denote the state of the working directory in git).

Note that using ZSH `autocd` option can sometimes cause weird compilation issues.

### VIM

#### Bindings In Normal Mode
* Leader: comma `,` or backslash `\`
* `g/`  : git grep ( directory search shortcut )
* `g\*` : git grep current word
* `gn`  : next in cabinet
* `gp`  : previous in cabinet
* `gq`  : close cabinet
* `gc`  : Comment line

Leader Stuff

* Leader + `fs` : Go fullscreen without Lion swoosh effect ( MacVim only )
* Leader + `cw` : Trim trailing whitespace
* Leader + `t`  : Command-T file browser
* Leader + `fr` : Refresh Command-T
* Leader + `fb` : Command-T buffer list
* Leader + `nt` : toggle NERDTree

#### Bindings In Insert Mode
* Ctrl + `L`    : insert hash-rocket (`=>`)
* Ctrl + `K`    : insert method-missile (`->`)


## VCPrompt
Copy it from here to a directory on your PATH

    curl https://raw.github.com/djl/vcprompt/v1.0.1/bin/vcprompt > /usr/local/bin/vcprompt && sudo chmod +x /usr/local/bin/vcprompt
