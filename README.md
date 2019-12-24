# alpine-gitolite

Alpine base image with **s6-ovleray**, **openssh-server** (stable) and **gitolite**

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/chruth/alpine-gitolite?style=flat-square)
![Docker Pulls](https://img.shields.io/docker/pulls/chruth/alpine-gitolite?style=flat-square)
![MicroBadger Layers](https://img.shields.io/microbadger/layers/chruth/alpine-gitolite?style=flat-square)
![GitHub](https://img.shields.io/github/license/chruth/alpine-gitolite?style=flat-square)

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
| -v \<path for app files\>:/app |  |
