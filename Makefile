DOCKER_IMAGE_PREFIX?=dockette
DOCKER_TAG?=latest
IMAGES := jdk8 mvn openjdk-mvn openjdk8

.PHONY: build test run $(addprefix build-,$(IMAGES)) $(addprefix test-,$(IMAGES)) $(addprefix run-,$(IMAGES))

build: $(addprefix build-,$(IMAGES))

test: $(addprefix test-,$(IMAGES))
run: run-openjdk8

build-jdk8:
	docker build -t ${DOCKER_IMAGE_PREFIX}/jdk8:${DOCKER_TAG} jdk8

build-mvn:
	docker build -t ${DOCKER_IMAGE_PREFIX}/mvn:${DOCKER_TAG} mvn

build-openjdk-mvn:
	docker build -t ${DOCKER_IMAGE_PREFIX}/openjdk-mvn:${DOCKER_TAG} openjdk-mvn

build-openjdk8:
	docker build -t ${DOCKER_IMAGE_PREFIX}/openjdk8:${DOCKER_TAG} openjdk8

test-jdk8:
	docker run --rm ${DOCKER_IMAGE_PREFIX}/jdk8:${DOCKER_TAG} java -version

test-mvn:
	docker run --rm ${DOCKER_IMAGE_PREFIX}/mvn:${DOCKER_TAG} java -version
	docker run --rm ${DOCKER_IMAGE_PREFIX}/mvn:${DOCKER_TAG} mvn -version

test-openjdk-mvn:
	docker run --rm ${DOCKER_IMAGE_PREFIX}/openjdk-mvn:${DOCKER_TAG} java -version
	docker run --rm ${DOCKER_IMAGE_PREFIX}/openjdk-mvn:${DOCKER_TAG} mvn -version

test-openjdk8:
	docker run --rm ${DOCKER_IMAGE_PREFIX}/openjdk8:${DOCKER_TAG} java -version

run-jdk8:
	docker run --rm -it -v "$${PWD}:/data" ${DOCKER_IMAGE_PREFIX}/jdk8:${DOCKER_TAG} java -version

run-mvn:
	docker run --rm -it -v "$${PWD}:/data" ${DOCKER_IMAGE_PREFIX}/mvn:${DOCKER_TAG}

run-openjdk-mvn:
	docker run --rm -it -v "$${PWD}:/data" ${DOCKER_IMAGE_PREFIX}/openjdk-mvn:${DOCKER_TAG}

run-openjdk8:
	docker run --rm -it -v "$${PWD}:/data" ${DOCKER_IMAGE_PREFIX}/openjdk8:${DOCKER_TAG} java -version
