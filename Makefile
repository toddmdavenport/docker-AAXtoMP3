DOCKER_USERNAME="toddmdavenport"
CONTAINER_NAME="aaxtomp3"
GIT_HASH ?= $(shell git log --format="%h" -n 1)
VERSION="0.0.2"

AAXTOMP3_CONTAINTER="${DOCKER_USERNAME}/${CONTAINER_NAME}:latest"

build:
	@echo "Building AAXTOMP3 container"
	@docker build -t ${DOCKER_USERNAME}/${CONTAINER_NAME}:${VERSION}-${GIT_HASH} .

publish:
	@echo "Pushing container to registry"
	@docker tag ${CONTAINER_NAME}:${VERSION}-${GIT_HASH} ${AAXTOMP3_CONTAINTER}
	@docker push ${AAXTOMP3_CONTAINTER}

mp3:
	@echo "Converting file to MP3"
	@docker run ${AAXTOMP3_CONTAINTER} 

chapters:


