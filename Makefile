.PHONY: install-deps proto buf

install-deps:
	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
	go install connectrpc.com/connect/cmd/protoc-gen-connect-go@latest
	echo "You need install buf manually, https://github.com/bufbuild/buf"

buf:
	buf dep update

proto:
	buf generate
