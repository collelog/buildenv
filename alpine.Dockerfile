FROM alpine:latest

RUN set -eux && \
	apk upgrade --update && \
	apk add --no-cache --update \
		autoconf \
		automake \
		alpine-sdk \
		ca-certificates \
		cmake \
		coreutils \
		cunit-dev \
		libtool \
		linux-headers \
		nasm \
		python3 \
		tzdata \
		unzip \
		yasm && \
	\
	# cleaning
	rm -rf /tmp/* /var/cache/apk/*

WORKDIR /build
