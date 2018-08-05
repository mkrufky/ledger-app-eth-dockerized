.PHONY: build clean test

image:
	$(eval GIT_REF=$(shell git rev-parse --short HEAD))
	@docker build -f Dockerfile -t blue-app-eth:${GIT_REF} .
