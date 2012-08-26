require 'bundler'
require 'rack/jekyll'
require 'newrelic_rpm'
require 'dalli'
#require 'memcachier'
require 'rack-cache'


Bundler.require(:default, :production)

NewRelic::Agent.after_fork(:force_reconnect => true)

run Rack::Jekyll.new(:destination => 'public')


  $cache = Dalli::Client.new
  use Rack::Cache,
    :verbose => true,
    :metastore => $cache,
    :entitystore => $cache

use Rack::Deflater
