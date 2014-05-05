define :home_dir_dotfile do
  filename = ".#{params[:name]}"

  template "dotfile : '#{filename}'" do
    path "#{ENV['HOME']}/#{filename}"
    source params[:name]
  end
end
