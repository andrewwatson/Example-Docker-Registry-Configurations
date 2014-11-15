#!/bin/bash

docker run -it \
	-e SETTINGS_FLAVOR=local \
	-e STORAGE_PATH=/registry \
	-e DOCKER_REGISTRY_CONFIG=/data/config-original.yml \
	--volumes-from my-data \
	-p 5000:5000 registry 

# -v $PWD:/registry-conf \