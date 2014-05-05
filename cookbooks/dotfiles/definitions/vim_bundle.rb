define :vim_bundle do
  repo        = params[:name]
  folder_name = repo.split("/").last

  execute "git clone git://github.com/#{repo}.git" do
    only_if { !Dir.exists?("#{ENV['HOME']}/.vim/bundle/#{folder_name}") }
    cwd "#{ENV['HOME']}/.vim/bundle"
  end
end
