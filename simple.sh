#!/bin/bash

docker run \
	-e SETTINGS_FLAVOR=s3 \
	-e AWS_BUCKET=temp-docker-registry-storage \
	-e STORAGE_PATH=/registry \
	-e AWS_KEY=$AWS_ACCESS_KEY \
	-e AWS_SECRET=$AWS_SECRET_KEY \
	-e DOCKER_REGISTRY_CONFIG=/registry-conf/config-s3only.yml \
	-v $PWD:/registry-conf \
	-p 5000:5000 registry
