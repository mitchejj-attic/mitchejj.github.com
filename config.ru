require 'bundler'
require 'rack/jekyll'
require 'newrelic_rpm'

Bundler.require(:default, :production)
NewRelic::Agent.after_fork(:force_reconnect => true)


run Rack::Jekyll.new(:destination => 'public')

use Rack::Deflater

$cache = Dalli::Client.new
use Rack::Cache,
  :verbose => true,
  :metastore => $cache,
  :entitystore => $cache