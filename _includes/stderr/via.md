{% assign _viaTemp = nil %} {% assign _viaTitleSize = page.via | size %} {% assign _viaURLSize = page.viaURL | size %}
{% if _viaTitleSize > 0 or _viaURLSize > 0 %}
	{% capture _viaTemp %} via: [{{ page.via }}]({{ page.viaURL }}) {% endcapture %}
{% elsif _viaTitleSize <= 0 and _viaURLSize > 0 %}
	{% capture _viaTemp %} via: [{{ page.via }}]({{ page.viaURL }}) {% endcapture %}
{% else %}
	{% assign _viaTemp = nil %}
{% endif %} {{_viaTemp}} {% assign _viaTemp = nil %}