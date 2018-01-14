from golang:alpine

RUN apk update && apk add \
  bash \
  git \
  protobuf

RUN go get -u github.com/golang/protobuf/protoc-gen-go

ENTRYPOINT ["protoc"]
