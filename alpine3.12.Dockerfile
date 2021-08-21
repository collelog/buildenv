FROM alpine:3.12

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
		curl \
		dos2unix \
		libtool \
		linux-headers \
		nasm \
		python3 \
		tzdata \
		unzip \
		wget \
		yasm && \
	\
	# cleaning
	rm -rf /tmp/* /var/tmp/*

WORKDIR /build
