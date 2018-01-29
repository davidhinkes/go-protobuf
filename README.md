# README

This project builds a container with protoc and golang support.

## Usage

```
//go:generate docker run --entrypoint=bash --rm -v $PWD:/protos davidhinkes/go-protobuf -c 'protoc --go_out=/protos/gen -I /protos `find /protos/*.proto`''
```

```
//go:generate docker --rm -v $PWD:/protos davidhinkes/go-protobuf --go_out=/protos/gen -I /protos /some/path/to/file.proto
```
