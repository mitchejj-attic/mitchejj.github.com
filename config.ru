require 'bundler'
require 'rack/jekyll'
require 'newrelic_rpm'

Bundler.require(:default, :production)
#NewRelic::Agent.after_fork(:force_reconnect => true)

use Rack::Deflater
#if memcache_servers = ENV["MEMCACHE_SERVERS"]
#  require 'dalli'
#  require 'rack-cache'
#  require 'memcachier'
#  $cache = Dalli::Client.new
#  use Rack::Cache,
#    :verbose => true,
#    :metastore => $cache,
#    :entitystore => $cache
#end
run Rack::Jekyll.new(:destination => 'public')