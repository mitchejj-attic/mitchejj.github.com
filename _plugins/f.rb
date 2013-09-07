require 'liquid'
require 'json'
require 'flickraw-cached'

FlickRaw.secure = true

FlickRaw.api_key = ENV['FLICKR_API_KEY']
FlickRaw.shared_secret = ENV['FLICKR_SHARED_SECRET']
flickr.access_token = ENV['FLICKR_AUTH_TOKEN']
flickr.access_secret = ENV['FLICKR_AUTH_SECRET']

module Flickr
	def photo (id)
		object = flickr.photos.getInfo(:photo_id => id)
		page = object.urls[0]
	end

	def photoset (id)

	end

	private
	def flickr_object(id, type)

	end


end

Liquid::Template.register_filter(Flickr)