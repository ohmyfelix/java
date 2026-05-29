IMAGE_PREFIX ?= dockette
IMAGES := jdk8 mvn openjdk-mvn openjdk8

.PHONY: build test run $(addprefix build-,$(IMAGES)) $(addprefix test-,$(IMAGES)) $(addprefix run-,$(IMAGES))

build: $(addprefix build-,$(IMAGES))

test: $(addprefix test-,$(IMAGES))
run: run-openjdk8

build-jdk8:
	docker build -t $(IMAGE_PREFIX)/jdk8:latest jdk8

build-mvn:
	docker build -t $(IMAGE_PREFIX)/mvn:latest mvn

build-openjdk-mvn:
	docker build -t $(IMAGE_PREFIX)/openjdk-mvn:latest openjdk-mvn

build-openjdk8:
	docker build -t $(IMAGE_PREFIX)/openjdk8:latest openjdk8

test-jdk8:
	docker run --rm $(IMAGE_PREFIX)/jdk8:latest java -version

test-mvn:
	docker run --rm $(IMAGE_PREFIX)/mvn:latest sh -lc 'java -version && mvn -version'

test-openjdk-mvn:
	docker run --rm $(IMAGE_PREFIX)/openjdk-mvn:latest sh -lc 'java -version && mvn -version'

test-openjdk8:
	docker run --rm $(IMAGE_PREFIX)/openjdk8:latest java -version

run-jdk8:
	docker run --rm -it -v $(PWD):/data $(IMAGE_PREFIX)/jdk8:latest java -version

run-mvn:
	docker run --rm -it -v $(PWD):/data $(IMAGE_PREFIX)/mvn:latest

run-openjdk-mvn:
	docker run --rm -it -v $(PWD):/data $(IMAGE_PREFIX)/openjdk-mvn:latest

run-openjdk8:
	docker run --rm -it -v $(PWD):/data $(IMAGE_PREFIX)/openjdk8:latest java -version
