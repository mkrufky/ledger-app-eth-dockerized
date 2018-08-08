.PHONY: build clean test

%:
	$(eval GIT_REF=$(shell git rev-parse --short HEAD))
	@docker build --build-arg CHAIN="${@}" -f Dockerfile -t blue-app-eth-$@:${GIT_REF} .
	@docker run --rm -v `pwd`:/project --name blue-app-eth-$@ blue-app-eth-$@:${GIT_REF}
	@docker run --rm -v `pwd`:/project --name blue-app-eth-$@ blue-app-eth-$@:${GIT_REF} | tar --extract --verbose
	@source binaries/$@/load.sh
