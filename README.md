## tiddlywiki docker

> 本仓库由[Dockerfile](https://github.com/oeyoews/tiddlywiki-starter-kit/blob/main/Dockerfile) 简化而来, 完全兼容tiddlywiki的全部命令参数

## 使用方法

* 下载仓库的docker-compose.yml文件到一个空的目录下, 然后启动 `docker-compose up -d` 即可.默认访问端口8080,更多配置查看docker-compose.yml

```bash
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
    # 启动
    command: ["tiddlywiki", "wiki", "--listen", "port=8080", "host=0.0.0.0"]
    # 构建index.html
    # command: ["tiddlywiki", "tiddlywiki", "--build", "index"]
```
