# alpine-gitolite

Alpine Linux with **gitolite** and **openssh-server**

[![Drone (cloud)](https://img.shields.io/drone/build/chruth/alpine-gitolite?style=flat-square)](https://cloud.drone.io/chruth/alpine-gitolite)
[![Docker Pulls](https://img.shields.io/docker/pulls/chruth/alpine-gitolite?style=flat-square)](https://hub.docker.com/r/chruth/alpine-gitolite)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/chruth/alpine-gitolite?style=flat-square)](https://microbadger.com/images/chruth/alpine-gitolite)
[![GitHub](https://img.shields.io/github/license/chruth/alpine-gitolite?style=flat-square)](https://github.com/chruth/alpine-gitolite/blob/master/LICENSE)

# Usage

### docker

```
docker run -d \
  --name=alpine-gitolite \
  -p 2222:2222 \
  -v <path for config files>:/config \
  -v <path to ssh-key.pub>:/config/admin.pub
  --restart unless-stopped \
  chruth/alpine-gitolite
```


### docker-compose

```
---
version: '3'
services:
  alpine-gitolite:
    image: chruth/alpine-gitolite
    container_name: alpine-gitolite
    ports:
    - "2222:2222"
    volumes:
    - <path for config files>:/config
    - <path to ssh-key.pub>:/config/admin.pub
    restart: unless-stopped
```

### Optional settings

| setting | default value |
| :---: | --- |
| -e PUID | 1000 |
| -e PGID | 1000 |
| -e TZ | Europe/Berlin |
| -v \<path for app files\>:/app |  |
