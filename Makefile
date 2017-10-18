all: build_and_push

build_base:
	docker build . -f Dockerfile.base -t cwpearson/latex:base
build_science: build_base
	docker build . -f Dockerfile.science -t cwpearson/latex:science
build_tikz: build_science
	docker build . -f Dockerfile.tikz -t cwpearson/latex:tikz
build_heavy: build_base
	docker build . -f Dockerfile.heavy -t cwpearson/latex:heavy
build_full: build_heavy
	docker build . -f Dockerfile.full -t cwpearson/latex:full
	docker build . -f Dockerfile.full -t cwpearson/latex:latest

push_base: build_base
	docker push cwpearson/latex:base
push_science: build_science
	docker push cwpearson/latex:science
push_tikz: build_tikz
	docker push cwpearson/latex:tikz
push_heavy: build_heavy
	docker push cwpearson/latex:heavy
push_full: build_full
	docker push cwpearson/latex:full
	docker push cwpearson/latex:latest

build_and_push: push_base push_science push_tikz push_heavy push_full 
