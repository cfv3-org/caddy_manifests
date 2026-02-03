PODMAN      ?= podman
PROJECT     := caddy

IMAGE_ROUTER   := caddy-router:latest
IMAGE_TRUENAS  := caddy-truenas:latest

.PHONY: build build-router build-truenas

build: build-router build-truenas

build-router:
	$(PODMAN) build \
		-f Manifest/Dockerfile.router \
		-t $(IMAGE_ROUTER) \
		.

build-truenas:
	$(PODMAN) build \
		-f Manifest/Dockerfile.truenas \
		-t $(IMAGE_TRUENAS) \
		.

