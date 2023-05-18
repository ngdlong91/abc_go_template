#!/bin/sh
mkdir -p /protobuf/web/

protoc -I=/protobuf/ -I=/usr/local/include --js_out=import_style=commonjs,binary:/protobuf/web/ \
--grpc-web_out=import_style=commonjs+dts,mode=grpcwebtext:/protobuf/web/ /protobuf/*.proto /usr/local/include/google/protobuf/timestamp.proto /usr/local/include/google/protobuf/struct.proto