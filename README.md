# docker-supervisor

#### 项目介绍
docker-supervisor

support os:
1. alpine:curl bash openssh wget net-tools gettext zip unzip xz tar tzdata ncurses supervisor
2. centos:passwd openssl openssh-server wget net-tools gettext zip unzip xz tar ncurses supervisor

support tool
1. supervisor
2. apphome: /data/app
3. user: root/admin; app/123456
4. url: 0.0.0.0:9001
4. usage:
docker run -it --rm --name supervisor-alpine registry.cn-hangzhou.aliyuncs.com/rancococ/supervisor:alpine "bash"
docker run -it --rm --name supervisor-centos registry.cn-hangzhou.aliyuncs.com/rancococ/supervisor:centos "bash"
