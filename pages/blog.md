---
layout: page
title: "Blog"
description: ""
---
{% include JB/setup %}
<ul class="post">
{% for post in site.posts limit:4  %}
<h1>{{ post.title }}</h1>
{{ post.content }}
<hr/>
{% endfor  %}
</ul>