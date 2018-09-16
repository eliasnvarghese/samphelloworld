#!/bin/sh

set -e

jar_name='svc.jar'
port=1111

java -jar target/$jar_name --server.port=$port
