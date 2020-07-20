FROM node:14-alpine

RUN set -eux && \
	apk upgrade --update && \
	apk add --no-cache --update \
		autoconf \
		automake \
		alpine-sdk \
		cmake \
		coreutils \
		cunit-dev \
		libtool \
		nasm \
		python3 \
		tzdata \
		unzip \
		yasm && \
	\
	# JST
	cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
	echo "Asia/Tokyo" > /etc/timezone && \
	\
	# cleaning
	rm -rf /tmp/* /var/cache/apk/*
