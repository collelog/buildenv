FROM node:18-bullseye-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN set -eux && \
	apt-get update -qq && \
	apt-get upgrade -y && \
	apt-get install -y --no-install-recommends \
		autoconf \
		automake \
		build-essential \
		ca-certificates \
		cmake \
		coreutils \
		curl \
		dos2unix \
		libcunit1-dev \
		libtool \
		linux-headers-5.10.0-22 \
		nasm \
		openssl \
		python3 \
		tzdata \
		unzip \
		wget \
		yasm && \
	\
	update-ca-certificates --fresh && \
	\
	# cleaning
	apt-get clean && \
	rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/*

WORKDIR /build
