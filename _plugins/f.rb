require 'liquid'
require 'json'
require 'flickraw-cached'

FlickRaw.secure = true

FlickRaw.api_key = ENV['FLICKR_API_KEY']
FlickRaw.shared_secret = ENV['FLICKR_SHARED_SECRET']
flickr.access_token = ENV['FLICKR_AUTH_TOKEN']
flickr.access_secret = ENV['FLICKR_AUTH_SECRET']

module Flickr

	private
	def flickr_object(id)

	end	
end

Liquid::Template.register_filter(Flickr)