#!/usr/bin/env bash

docker build --no-cache \
	-t "rubensa/node-chrome" \
	--label "maintainer=Ruben Suarez <rubensa@gmail.com>" \
	.
