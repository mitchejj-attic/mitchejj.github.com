source :rubygems

##### Basic Set up for rake
gem	"rake"                # actually not need for heroku but for the provided Rakefile
gem	"rack"

##### Add Jekyll
#gem	"jekyll", "~> 0.11.2" # we need at least this version so jekyll will use Ruby 1.9.2
gem	"rack-jekyll", :git => 'https://github.com/adaoraul/rack-jekyll.git', :require => 'rack/jekyll'
gem "liquid"

##### Add-ons for Jekyll
gem "RedCloth"            # if you want to use the Textile Markup Language
gem "kramdown"            # i wish to use kramdown
gem "coderay"

#### For the Server
gem 'unicorn'			# our server of chice
gem 'rack-cache'
#gem 'rack-contrib'

#### For the heroku add-ons
gem 'dalli'           #for mecahce
gem 'memcachier'
gem 'newrelic_rpm'    #for poor stats


#gem "pygmentize"
#gem "foreman"             # this is a tool to test and use the Procfile locally
#gem "heroku"              # if you install the Heroku Toolbelt you won't need this but it's good practice


