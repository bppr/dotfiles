#!/usr/bin/env ruby
# vim: ft=ruby

require 'fileutils'

if !ARGV.include?("--force")
  puts "BEFORE YOU DO THIS~"
  puts "you should have run the following command!"
  puts
  puts "rvm use system"
  puts
  puts "if you have run this command and are using system ruby, type yes to continue"

  if gets.chomp != "yes"
    exit 0
  end
end

git_bundles = [
  # plugins

  "git://github.com/vim-scripts/pathogen.vim.git",
  "git://github.com/vim-scripts/surround.vim.git",
  "git://github.com/scrooloose/nerdtree.git",
  "git://github.com/tpope/vim-fugitive.git",
  "git://github.com/altercation/vim-colors-solarized.git",
  "git://github.com/wincent/Command-T.git",
  "git://github.com/vim-scripts/tComment.git",
  "git://github.com/vim-scripts/tComment.git",
  "git://github.com/bling/vim-airline.git",

  # syntax / language
  "git://github.com/kchmck/vim-coffee-script.git",
  "git://github.com/vim-ruby/vim-ruby.git",
  "git://github.com/pangloss/vim-javascript.git",
  "git://github.com/othree/html5.vim.git",
  "git://github.com/vim-scripts/VimClojure",
  "git://github.com/jnwhiteh/vim-golang.git"
]


bundle_dir = File.expand_path('../bundle/', __FILE__)

FileUtils.rm_rf(bundle_dir)
FileUtils.mkdir_p(bundle_dir)

git_bundles.each do |url|
  dirname = File.basename(url).gsub(".git", "")
  FileUtils.mkdir_p(File.join(bundle_dir, dirname))

  puts
  puts "* Unpacking #{url} into #{dirname}"

  dir = File.join(bundle_dir, dirname)
  Kernel.system("cd #{dir} && git clone #{url} #{dir}")
end


puts "Attempting to compile Command-T Ruby Extensions"
FileUtils.cd("bundle/Command-T")
`curl https://raw.github.com/tomtom/vimball.rb/master/vimball.rb > vendor/vimball/vimball.rb && chmod 0755 vendor/vimball/vimball.rb && make`

FileUtils.cd("ruby/command-t")
`ruby extconf.rb && make`

puts "Okay, sweet."
