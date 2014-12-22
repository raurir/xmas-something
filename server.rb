#!/usr/bin/env ruby -wKU

# USAGE
#
# ./scripts/server.rb my_project/deploy 3000


require 'webrick'
require 'rubygems'

include WEBrick

server = HTTPServer.new(:Port => ARGV[1], :DocumentRoot => File.expand_path(ARGV[0]))

trap("INT"){
  server.shutdown
}
server.start