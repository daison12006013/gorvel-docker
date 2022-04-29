[![Docker Image CI](https://github.com/daison12006013/lucid-docker-image/actions/workflows/docker-image.yml/badge.svg)](https://github.com/daison12006013/lucid-docker-image/actions/workflows/docker-image.yml)

# Lucid's Docker Image

This repository will build an image and pushes to [DockerHub](https://hub.docker.com/repository/docker/daison12006013/lucid)

To run it, you may execute it this way.

```bash
./build-local.sh develop
```

The bash file will automatically download the `develop` branch from [Lucid's Repository](https://github.com/daison12006013/lucid), and then it will automatically read the `Dockerfile` and build the image, then it will push the image to Docker Hub
