#!/usr/bin/env bash

docker build --no-cache \
	-t "rubensa/node-chrome:gallium" \
	--label "maintainer=Ruben Suarez <rubensa@gmail.com>" \
	.
