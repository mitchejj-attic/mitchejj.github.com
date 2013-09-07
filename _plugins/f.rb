require 'liquid'
require 'json'
require 'flickraw-cached'

FlickRaw.secure = true

FlickRaw.api_key = ENV['FLICKR_API_KEY']
FlickRaw.shared_secret = ENV['FLICKR_SHARED_SECRET']
flickr.access_token = ENV['FLICKR_AUTH_TOKEN']
flickr.access_secret = ENV['FLICKR_AUTH_SECRET']

module Jekyll
  class FlickrPhoto < Liquid::Tag

    def initialize(id)
      super
      @id = id
    end

    def render(context)
      "#{@id} #{Time.now}"
    end
  end
end

Liquid::Template.register_tag('flickr_photo', Jekyll::FlickrPhoto)
