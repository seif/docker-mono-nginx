## MONO Configured with nginx as a http proxy

This repository contains Dockerfile for publishing Docker's automated build to the public [Docker Hub Registry](https://registry.hub.docker.com/) with [dumb-init](https://github.com/Yelp/dumb-init) as process with id 1 launching [nginx](http://wiki.nginx.org/Main) and an executable as a service.

> Nginx is exposed from the container on port 80.

### Base docker image

    mono:VERSION
