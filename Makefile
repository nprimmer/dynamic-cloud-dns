.PHONY: lint test build

lint:
	golangci-lint run ./...

test:
	go test -v ./...

build:
	go build -o dynamic-cloud-dns
