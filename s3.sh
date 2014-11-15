#!/bin/bash

. env.sh

docker run -d \
	-e SETTINGS_FLAVOR=s3 \
	-e AWS_BUCKET=$AWS_BUCKET \
	-e STORAGE_PATH=/registry \
	-e AWS_KEY=$AWS_ACCESS_KEY \
	-e AWS_SECRET=$AWS_SECRET_KEY \
	-e AWS_REGION=us-west-1 \
	-e DISABLE_TOKEN_AUTH=true \
	-v $PWD:/registry-conf \
	-e DOCKER_REGISTRY_CONFIG=/registry-conf/config-s3only.yml \
	-e STANDALONE=true \
	-p 5000:5000 registry

#	 --volumes-from my-data \
