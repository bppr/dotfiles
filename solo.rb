root = File.expand_path(File.dirname(__FILE__))

file_cache_path root
cookbook_path root + "/cookbooks"
ssl_verify_mode :verify_peer
