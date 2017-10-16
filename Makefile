all: build_and_push

build:
	docker build . -f Dockerfile.base -t cwpearson/latex:base
	docker build . -f Dockerfile.science -t cwpearson/latex:science
	docker build . -f Dockerfile.full -t cwpearson/latex:full

build_and_push: build
	docker push cwpearson/latex:base
	docker push cwpearson/latex:full
	docker push cwpearson/latex:science