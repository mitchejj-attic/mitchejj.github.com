require 'liquid'
require 'json'
require 'flickraw-cached'

FlickRaw.secure = true

FlickRaw.api_key = ENV['FLICKR_API_KEY']
FlickRaw.shared_secret = ENV['FLICKR_SHARED_SECRET']
flickr.access_token = ENV['FLICKR_AUTH_TOKEN']
flickr.access_secret = ENV['FLICKR_AUTH_SECRET']

module Jekyll
  class RenderTimeTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "#{@text} #{Time.now}"
    end
  end
end

Liquid::Template.register_tag('render_time', Jekyll::RenderTimeTag)
