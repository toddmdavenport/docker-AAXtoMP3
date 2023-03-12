AAXTOMP3_CONTAINTER=""


container:
	@echo "Building AAXTOMP3 container"
	@docker build .

publish:
	@echo "Pushing container to registry"
	@docker login
	@docker push

mp3:
	@echo "Converting file to MP3"
	@docker run ${AAXTOMP3_CONTAINTER} 

chapters: