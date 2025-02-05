.PHONY: build
build:
	go build -o bin/apiserver -v ./cmd/apiserver 

.PHONY: run
run:
	go run -v ./cmd/apiserver

.PHONY: test
test:
	go test -v -race -timeout 30s ./...

.PHONY: prod
prod:
	./bin/apiserver

.DEFAULT_GOAL := build
