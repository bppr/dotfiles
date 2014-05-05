desc "README"
task :readme do
  puts "USAGE: edit solo.json, then run 'rake install'"
end

task :default => [:readme]

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
  Kernel.system("chef-solo -c config/solo.rb -j config/solo.json")
end
