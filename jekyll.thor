#####
##
##  Base Source:
##    http://jonasforsberg.se/2012/12/28/create-jekyll-posts-from-the-command-line
##
#####


require "stringex"
class Jekyll < Thor
  desc "new", "create a new post"
  method_option :editor, :default => "subl"
  def new(*title)
    title = title.join(" ")
    date = Time.now.strftime('%Y-%m-%d')
    filename = "_posts/#{date}-#{title.to_url}.md"

    if File.exist?(filename)
      abort("#{filename} already exists!")
    end

    puts "Creating new post: #{filename}"
    open(filename, 'w') do |post|

post.puts "---"
post.puts "published: false"
post.puts "layout: post"
post.puts "title: \"#{title.gsub(/&/,'&amp;')}\""
post.puts "description:"
post.puts "tags:"
post.puts "source:"
post.puts "   url:"
post.puts "   title:"
post.puts "llist:"
post.puts "image:"
post.puts "   url:"
post.puts "   caption:"
post.puts "---"
post.puts "{% include JB/setup %}"
post.puts "{% include stderr/setup %}"
    end

    system(options[:editor], filename)
  end
end
