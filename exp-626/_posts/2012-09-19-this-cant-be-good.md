---
layout: post
title: "This Can't be Good"
description:
category:
tags: [macosx]
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
Part of a crash log report that caused my iPhone not to sync last night:
		
	Crashed Thread:  0  Dispatch queue: com.apple.main-thread
	
	Exception Type:  EXC_BAD_ACCESS (SIGBUS)
	Exception Codes: KERN_PROTECTION_FAILURE at 0x0000000100700000
	
	VM Regions Near 0x100700000:
	    MALLOC_TINY            0000000100600000-0000000100700000 [ 1024K] rw-/rwx SM=PRV  
	--> STACK GUARD            0000000100700000-0000000100701000 [    4K] ---/rwx SM=NUL  stack guard for thread 1
	    Stack                  0000000100701000-0000000100783000 [  520K] rw-/rwx SM=COW  thread 1
	
	Thread 0 Crashed:: Dispatch queue: com.apple.main-thread
