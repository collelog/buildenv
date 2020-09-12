FROM ruby:2.7.1-slim-buster

ENV DEBIAN_FRONTEND=noninteractive

RUN set -eux && \
	apt-get update -qq && \
	apt-get install -y --no-install-recommends \
		autoconf \
		automake \
		build-essential \
		ca-certificates \
		cmake \
		coreutils \
		curl \
		libcunit1-dev \
		libtool \
		linux-kernel-headers \
		nasm \
		python3 \
		tzdata \
		unzip \
		yasm && \
	\
	# cleaning
	apt-get clean && \
	rm -rf /tmp/* /var/lib/apt/lists/*

WORKDIR /build
