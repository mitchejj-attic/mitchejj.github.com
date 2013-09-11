---
published: false
layout: post
title: "SpiderOak"
description:
tags:
source:
   url:
   title:
llist: https://spideroak.com/download/referral/3dd319d4afeaad92c8672e76c8789ef2
image:
   url:
   caption:
---
{% include JB/setup %}
{% include stderr/setup %}
Ever since I moved to to linux as my day-to-day OS I've been searching for the best backup/sync solution. I want something I can trust, that has an ability to sync, revision/version control and most importantly I want a soulution that I can easily archived data when on my iPhone or on OS X. I know back up and sync are two different problems, requiring differet solutions. However, the data I wish to keep synced between devices also happen to be important enought for me to keep backed up.

From what I can tell on a few "big box" solutions exist. In the past I have relied on [Dropbox][dropbox] to help keep my data in sync, I really can't see a time where Dropbox isn't going to play a role... in what ever this quest is. Who doesn't love Dropbox? It is great for sharing files and keeping data synced; great as it is, it is not a backup solution.

Last year I did purchase a backup plan at a discounted price, Crash Plan. I didn't do much research on it, but for the price I just couldn't resist. I later found out the client side software required Java, I'm not a fan of running Java but I gave it spin and quickly dropped that solution. It seems like a good program, but it isn't want I want/need.

For awhile I've been doing my own thing using SparkleShare. At first glance this seems like a perfect solution, use anyone of the git based hosting solutions to to keep everything backed up and synced. This is great for little things that you wish to share, like your dotfiles or even your website. When the data becomes more personal, or work related you start looking at -crypto. Once you enable crypto Sparkleshare starts to break down. You no longer have easy access to files when away from your system and esentially loose revision control. In addition a [git repository does have a practical size limit][gitSize].

A few weeks ago I tried duplicity, I like it but where do I store my off site backups? Also do I really want to trust myself to creating a script that works all the time? I've also tried BitSync, which keeps files in sync but lacks any version control, no off site back-up and two systems must be running for this to work.

SpiderOak still isn't ideal, but right now it seems to be the best bad choice. I can then layer in the other systems/methods and allow SpiderOak to main heavy lifting.

Oh, I also have a lifetime account with StrongSpace.

[dropbox]: http://db.tt/Woq86zN
[sparkleshare]: http:///
[gitSize]: http://www.quora.com/Git-revision-control/What-is-the-practical-maximum-size-of-a-Git-repository-full-of-text-based-data?share=1