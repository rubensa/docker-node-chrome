#!/usr/bin/env bash

docker build --no-cache \
	-t "rubensa/node-chrome:erbium" \
	--label "maintainer=Ruben Suarez <rubensa@gmail.com>" \
	.
