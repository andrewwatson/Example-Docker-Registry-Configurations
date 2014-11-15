Example Docker Registry Project
===============================

### Configurations

config-s3only.yaml - Only configures the registry to store images in S3

config-original.yml - The full example configuration from the Docker Registry maintainers

config-s3-cached.yml - Stores images in S3 but has a Redis LRU cache for small files