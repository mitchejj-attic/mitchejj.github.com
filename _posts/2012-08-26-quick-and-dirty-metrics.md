---
layout: post
title: "quick and dirty metrics"
description: ""
category: blog
tags: []
---
{% include JB/setup %}
Now that I have github -> heroku publishing in place now is the time to setup even more over kill, heroku offers a few (2)5 MB Memcache Bucket.

I made the following addition to `config.ru`
		
		if memcache_servers = ENV["MEMCACHE_SERVERS"]
			require 'dalli'
			require 'rack-cache'
			require 'memcachier'
			$cache = Dalli::Client.new
			use Rack::Cache,
				:verbose => true,
				:metastore => $cache,
				:entitystore => $cache
		end
{:lang="ruby"}

To test that caching is working use `ab` aka Apache HTTP server benchmarking tool and run `ab -n 500 -c 5 <hostname>`
	
This will make 500 requst to <hostname> with 5 concurrent request.

And to see if `Rack::Deflater` is working

		curl -I -H "Accept-Encoding: gzip,deflate"
{:lang="text"}