# https://github.com/himynameisjonas/jonasforsberg.se/blob/master/_plugins/flickr.rb

require 'liquid'
require 'fleakr'

Fleakr.api_key = ENV['FLICKR_API_KEY']
Fleakr.shared_secret = ENV['FLICKR_SHARED_SECRET']
Fleakr.auth_token = ENV['FLICKR_AUTH_TOKEN']

CACHED_IMAGES = {}

module Flickr
  def flickr_image(url)
    "<img alt='#{image_object(url)}' src='#{image_object(url).large.url}'>"
  end

  def flickr_medium_image(url)
    "<img alt='#{image_object(url)}' src='#{image_object(url).medium.url}'>"
  end

  private

  def image_object(url)
    CACHED_IMAGES[url] ||= Fleakr.resource_from_url(url)
  end
end

Liquid::Template.register_filter(Flickr)