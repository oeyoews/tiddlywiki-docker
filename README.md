## tiddlywiki docker

> 本仓库由[Dockerfile](https://github.com/oeyoews/tiddlywiki-starter-kit/blob/main/Dockerfile) 简化而来, 完全兼容tiddlywiki(最新版)的全部命令参数, 启动命令可在docker-compose.yml文件中更改

## 使用方法

* 下载仓库的docker-compose.yml文件到一个空的目录下, 然后启动 `docker-compose up -d` 即可.默认访问端口8080,更多配置查看[docker-compose.yml](https://github.com/oeyoews/tiddlywiki-docker/blob/main/docker-compose.yml)

```yml
# docker-compose.yml
version: "3" # Docker Compose 版本

services:
  web:
    image: oeyoews/tiddlywiki-docker:latest
    ports:
      - "8080:8080"
    volumes:
      - ${PWD}/wiki:/app/wiki # 映射wiki 目录
      - ${PWD}/public/:/app/output # 映射对应的目录
    # 启动 tiddlywiki
    command: ["tiddlywiki", "wiki", "--listen", "port=8080", "host=0.0.0.0"]
    # 构建index.html
    # command: ["tiddlywiki", "tiddlywiki", "--build", "index"]
```

<!-- ## TODO -->

<!-- * add github ci to push images to dockerhub -->
