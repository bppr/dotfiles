desc "README"
task :readme do
  puts "edit solo.json, then run 'rake install'"
end

desc "clean up chef stuff, locally"
task :clean do
  FileUtils.rm_rf([
    "chef-client-running.pid",
    "chef-stacktrace.out"
  ])
end

desc "Install all dotfiles"
task :install => [:chef, :clean]

desc "Run chef"
task :chef do
  Kernel.system("chef-solo -c solo.rb -j solo.json")
end
