#!/bin/sh

if [ ! -d /usr/local/include/googleapis ]; then
    git clone https://github.com/googleapis/googleapis.git /usr/local/include/googleapis
fi

mkdir -p /protobuf/dart/
protoc -I=/protobuf/ -I=/usr/local/include --dart_out=grpc:/protobuf/dart/ /protobuf/*.proto /usr/local/include/google/protobuf/*.proto /usr/local/include/google/protobuf/struct.proto /usr/local/include/googleapis/google/rpc/error_details.proto
