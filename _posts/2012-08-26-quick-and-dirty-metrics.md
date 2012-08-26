---
layout: post
title: "quick and dirty metrics"
description: ""
category: blog
tags: []
---
{% include JB/setup %}
Now that I have github -> heroku publishing in place now is the time to setup even more over kill, heroku offers a few 5 MB Memcache Bucket.

I made the following addition to `config.ru`
		
		require 'dalli'
		require 'memcachier'
		require 'rack-cache'
		...
		$cache = Dalli::Client.new
		use Rack::Cache,
			:verbose => true,
			:metastore => $cache,
			:entitystore => $cache
{:lang="ruby"}

To test that caching is working use `ab` aka Apache HTTP server benchmarking tool and run `ab -n 1000 -c 5 <hostname>`
	
This will make 1000 requst to <hostname> with 5 concurrent request.
