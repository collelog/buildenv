cd /d %~dp0

docker buildx build --no-cache --ulimit 51200 --platform linux/amd64,linux/arm/v6,linux/arm/v7,linux/arm64 -t collelog/buildenv:debian -f debian.Dockerfile .\ --push
