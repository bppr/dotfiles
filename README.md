# Found my Dotfiles!

`bin/install` to symlink dotfiles. will not symlink over existing stuff.

`bin/fonts-install` for powerline fonts

`bin/vim-bundle` for vim bundleage

`bin/brew-install` to install brew-cask and basic list of recipes and casks

If you want to change what gets installed, or add other stuff, knock yourself
out and edit the installer files.

Depends on XCode or command line tools being installed. If you don't have either:

    xcode-select --install

to get the command-line tools, then go ahead.

### Et Cetera
`etc` directory contains
* a few iTerm color schemes
* a sample `my.cnf` file for MySQL to reduce its memory footprint on a dev box.
  Copy it to /etc/my.cnf to reduce memory usage by about 80%

TODO: Set a bunch of default OSX preferences in a script.
