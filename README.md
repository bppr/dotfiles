# Congratulations, You Found My Dotfiles Repo!
Let me save myself some time in the future.

## Dependencies
Versions listed are my current versions. YMMV.
* zsh (~5.0.5)
* tmux (~1.9)
* emacs (~24.3.1)
* vim (~7.4, compiled with Ruby support: try `vim-nox` debian recipe, or `vim` brew recipe)
* git (~1.9)
* [chruby](https://github.com/postmodern/chruby) (~0.3.8)
* [chgems](https://github.com/postmodern/chgems) (~0.3.2)
* vcprompt ([more](#vcprompt))

## Installation
* clone the repo: `git clone git://github.com/pratt121/dotfiles.git`
* `cd dotfiles`
* `bundle install`
* edit `solo.json` and remove any recipes you don't want
* `rake install`

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

* Leader + `cw` : Trim trailing whitespace
* Leader + `t`  : Command-T file browser
* Leader + `fr` : Refresh Command-T
* Leader + `fb` : Command-T buffer list
* Leader + `nt` : toggle NERDTree

#### Bindings In Insert Mode
* Ctrl + `L`    : insert hash-rocket (`=>`)
* Ctrl + `K`    : insert method-missile (`->`)

## VCPrompt
Copy it from [here](https://raw.github.com/djl/vcprompt/v1.0.1/bin/vcprompt) to a directory on your PATH. Make sure it's executable.

Example:

    curl https://raw.github.com/djl/vcprompt/v1.0.1/bin/vcprompt > /usr/local/bin/vcprompt && sudo chmod +x /usr/local/bin/vcprompt
