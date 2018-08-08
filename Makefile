.PHONY: build clean test

.ledgerblue:
	@pip3 install ledgerblue && touch .ledgerblue
	@echo ledgerblue installed

all: .ledgerblue
	@echo "Now, run \`make ethereum\`"

%:
	$(eval GIT_REF=$(shell git rev-parse --short HEAD))
	@docker build --build-arg CHAIN="${@}" -f Dockerfile -t blue-app-eth-$@:${GIT_REF} .
	@docker run --rm -v `pwd`:/project --name blue-app-eth-$@ blue-app-eth-$@:${GIT_REF}
	@docker run --rm -v `pwd`:/project --name blue-app-eth-$@ blue-app-eth-$@:${GIT_REF} | tar --extract --verbose
	@chmod 755 binaries/$@/load.sh
	@(cd binaries/$@; pwd; ./load.sh)
