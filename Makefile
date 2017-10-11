img=dockerhub.las:8010/zero/opentsdb
build:
	@docker build --build-arg OPENTSDB_VERSION=$(ver) -t $(img):$(ver) .
	@docker push $(img):$(ver)
