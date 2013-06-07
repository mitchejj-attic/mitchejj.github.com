---
published: false
layout: post
title: "falsity of sure things"
description: "natural scrolling with cinnamon"
tags:
source:
   url:
   title:
llist:
image:
   url:
   caption:
---
{% include JB/setup %}
{% include stderr/setup %}
My [2013[summer,vacation]][myLink] ended and I continue to evaluate and tinker with plans to create a standardized deployment across my laptops; I am finding what I once thought was a sure thing isn't. I currently run [OpenBox][openBox] on my Arch install, my desire to keep minimal system along how much I enjoy many aspects of [Crunch Bang][#!] I thought OpenBox would be the clear winner. Yet [Cinnamon][cMon] is starting to emerge as a strong contender, I am starting to grow fond of the environment. Electing to use Cinnamon would be taking the easy way out, and the baggage associated with it. [^baggage]

Cinnamon has some of the same 'issues' found in GNOME. Cinnamon being a GNOME derivative has a plethora of hidden settings. One such setting is natural scrolling. While I have natural scrolling correctly configure in xorg.conf{.d}


 	Section "InputClass"
 	   ...
 	   Option     "VertScrollDelta"      "-111"
 	   Option     "HorizScrollDelta"     "-111"
 	   ...
 	EndSection


Neither GNOME nor Cinnamon would honor this system wide defualt setting, so some tweaking in in order. I could use `dconf-editor` to follow the bread crumbs along the schema path below to alter the key value. A much simpler and dare I say elegant solution exist:

	gsettings set org.gnome.settings-daemon.peripherals.touchpad natural-scroll "true"


[^baggage]: I wish Cinnamon was an independant project and not a vital cog of Mint Linux. Without such seperation, lack of documantion the development cycle lacks transparency leaving the UX is at the whim of the Mint dev team.
> Cinnamon is a Mint project and it's the implementation of Mint's vision and needs for a desktop. It's in its design to be compatible with Linux as a whole though, so for it not work or not to be suitable on any distribution is a perfectly valid concern and we do consider it a bug
><small><cite>[Clement Lefebvre][clem]</cite></small>


[#!]: http://crunchbang.org
[myLink]: ../pages/arch-on-flash
[openBox]: http://openbox.org/
[cMon]: http://cinnamon.linuxmint.com/
[clem]: https://github.com/linuxmint/Cinnamon/issues/1828#issuecomment-16286688
