directory "create ~/.vim/autoload" do
  action    :create
  path      "#{ENV['HOME']}/.vim/autoload"
  recursive true
end

directory "create ~/.vim/bundle" do
  action    :create
  path      "#{ENV['HOME']}/.vim/bundle"
  recursive true
end

execute "Install Pathogen" do
  destination = "#{ENV['HOME']}/.vim/autoload/pathogen.vim"
  command "curl https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim > #{destination}"
  not_if { File.exists?(destination) }
end

[
  "wincent/command-t",
  "vim-scripts/surround.vim",
  "scrooloose/nerdtree",
  "tpope/vim-fugitive",
  "altercation/vim-colors-solarized",
  "vim-scripts/tComment",
  "godlygeek/tabular",
  "bling/vim-airline",
  "kchmck/vim-coffee-script",
  "vim-ruby/vim-ruby",
  "pangloss/vim-javascript",
  "othree/html5.vim",
  "vim-scripts/VimClojure",
  "tfnico/vim-gradle",
  "jnwhiteh/vim-golang"
].each { |repo| vim_bundle repo }

[ "gvimrc", "vimrc" ].each { |file| home_dir_dotfile file }

execute "Compile Command-T" do
  command "rake make"
  cwd "#{ENV['HOME']}/.vim/bundle/command-t"
end
