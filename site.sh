#!/bin/bash
DATE=$(date +%m%d%y)
TIME=$(date +%H%M)
if curl -I http://jsonplaceholder.typicode.com/| head -n 1 | grep "HTTP/1.1 200 OK"
then
	echo "Your 1st tab is up at $DATE and $TIME"
else
	echo "your 1st tab is down at $DATE and $TIME"
fi

if curl -I http://jsonplaceholder.typicode.com/posts|grep "HTTP/1.1 200 OK"
then
	echo "Your post tab is up at $DATE and $TIME"
else
	echo "your post tab is down at $DATE and $TIME"
fi

if curl -I http://jsonplaceholder.typicode.com/posts?userId=1|grep "HTTP/1.1 200 OK"
then
	echo "your get tab is up at $DATE and $TIME"
else
	echo "your tab is down at $DATE and $TIME"
fi
