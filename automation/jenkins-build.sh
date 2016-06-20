#!/bin/bash

set -o errexit
set -o pipefail

REPO='resinplayground/docker-toolbox'

for arch in $ARCHS; do
	cp -f Dockerfile.$arch Dockerfile
	docker build -t $REPO:$arch .
done

docker push $REPO
