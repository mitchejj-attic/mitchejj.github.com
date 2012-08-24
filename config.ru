require 'bundler'
require "rack/jekyll"
require 'newrelic_rpm'

Bundler.require(:default, :production)
NewRelic::Agent.after_fork(:force_reconnect => true)

use Rack::Deflater
run Rack::Jekyll.new(:destination => 'public')