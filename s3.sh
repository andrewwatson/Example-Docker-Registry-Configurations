#!/bin/bash

docker run -d \
	-e SETTINGS_FLAVOR=s3 \
	-e AWS_BUCKET=$AWS_BUCKET \
	-e STORAGE_PATH=/registry \
	-e AWS_KEY=$AWS_ACCESS_KEY \
	-e AWS_SECRET=$AWS_SECRET_KEY \
	-e AWS_REGION=us-west-1 \
	-e DOCKER_REGISTRY_CONFIG=/data/config-s3only.yml \
	--volumes-from my-data \
	-p 80:5000 registry

#	-v $PWD:/registry-conf \