#!/bin/sh
#this script mean to be run inside the protoc_builder container

protoc --proto_path=/protobuf/ -I=/protobuf --go_out=/protobuf /protobuf/*.proto