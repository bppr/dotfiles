#!/usr/bin/env ruby

require 'fileutils'

class Installer
  attr_accessor :options

  def install
    self.greet
    self.options = Options.prompt!
    self.confirm
  end

  def symlink
    working_dir = File.expand_path(File.dirname(__FILE__))
    home_dir    = File.expand_path("~")
    files       = self.options.get_selected_files(Dir.glob(File.join(working_dir,"*")))

    files.each do |file|
      filename =  File.basename(file)

      target_location = File.join(home_dir, filename.sub(/_/, "."))
      CLI.out "symlinking #{target_location} to point to #{filename}"

      FileUtils.rm_rf target_location if File.symlink?(target_location) || File.exist?(target_location)
      FileUtils.ln_s file, target_location
    end
  end

  def greet
    CLI.out
    CLI.out "Welcome to the Installation Installer Thing -- would you mind answering a few questions about your target installations today?"
    CLI.out
  end

  def confirm
    CLI.out "well, allright! you ARE aware this will delete your existing dotfiles in your home folder?" 
    CLI.out "so seriously, should I continue? y/n"

    if Options.confirm
      CLI.out "okay, here I go!"
      self.symlink
    else
      CLI.out "cowardice is a stinky cologne."
      exit 0
    end

  end

end

class CLI
  def self.get
    gets.chomp
  end

  def self.out(msg = "")
    puts msg
  end
end

class Options
  KEYS = ["zsh", "tmux", "vim", "git", "gem", "emacs.d"]

  def self.prompt!
    options = new

    KEYS.each do |option|
      CLI.out "install dotfiles for #{option}? (y/n)"
      response = CLI.get == "y"
      options.set(option, response)
    end

    rewrite_git_name_and_email if options.install?("git")

    options
  end

  def self.rewrite_git_name_and_email
    filename = "_gitconfig"
    CLI.out "what's your name? (for git config)"
    name = CLI.get

    CLI.out "what's your email? (for git config)"
    email = CLI.get

    text = File.read(filename).gsub(/__NAME__/, name).gsub(/__EMAIL__/, email)
    File.open(filename, "w") {|file| file.puts text }
  end

  def self.confirm
    CLI.get.downcase == "y"
  end

  def get_selected_files(all_files)
    confirms = KEYS.select {|k| install?(k)}
    all_files.select do |file|
      confirms.any? { |c| File.basename(file).include?(c) }
    end
  end

  def initialize
    @properties = {}
  end

  def install?(option)
    @properties.fetch(option, false)
  end

  def set(option, value)
    @properties[option] = value
  end
end

if $0 == __FILE__
  Installer.new.install
end
