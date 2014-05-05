require 'fileutils'

root = FileUtils.pwd

cookbook_path   root + "/cookbooks"
file_cache_path root
ssl_verify_mode :verify_peer
