#!/usr/bin/env bash

docker build --no-cache \
	-t "rubensa/node-chrome:fermium" \
	--label "maintainer=Ruben Suarez <rubensa@gmail.com>" \
	.
