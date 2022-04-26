# Gorvel's Docker Image

This repository will build an image and pushes to [DockerHub](https://hub.docker.com/repository/docker/daison12006013/gorvel)

To run it, you may execute it this way.

```bash
./build.sh develop
```

The bash file will automatically download the `develop` branch from [Gorvel's Repository](https://github.com/daison12006013/gorvel), and then it will automatically read the `Dockerfile` and build the image, then it will push the image to Docker Hub
