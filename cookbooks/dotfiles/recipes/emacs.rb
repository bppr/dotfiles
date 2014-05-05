home_dir  = ENV['HOME']
emacs_dir = "#{home_dir}/.emacs.d"

directory "create ~/.emacs.d" do
  action :create
  path   emacs_dir
end

template "emacs: init.el" do
  path "#{emacs_dir}/init.el"
  source "emacs/init.el"
end

template "emacs: lisp-hooks.el" do
  path "#{emacs_dir}/lisp-hooks.el"
  source "emacs/lisp-hooks.el"
end

template "emacs: repo.el" do
  path "#{emacs_dir}/repo.el"
  source "emacs/repo.el"
end

template "emacs: theme.el" do
  path "#{emacs_dir}/theme.el"
  source "emacs/theme.el"
end

template "emacs: plugin-manifest.el" do
  path "#{emacs_dir}/plugin-manifest.el"
  source "emacs/plugin-manifest.el"
end
