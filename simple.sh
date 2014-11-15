#!/bin/bash

docker run -d \
	-e SETTINGS_FLAVOR=local \
	-e STORAGE_PATH=/registry \
	-e DOCKER_REGISTRY_CONFIG=/registry-conf/config-original.yml \
 	-v $PWD:/registry-conf \
	-p 5000:5000 registry 

	#--volumes-from my-data \
