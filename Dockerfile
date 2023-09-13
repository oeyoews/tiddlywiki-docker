# oeyoews/tiddlywiki-docker
# 作者：oeyoews
# 版本：1.0
# 描述：这是一个示例 oeyoews/tiddlywiki-docker 镜像，用于使用 tiddlywiki

FROM node:alpine

# 使用 pnpm
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"

WORKDIR /app
RUN corepack enable && \
    pnpm install -g tiddlywiki@latest
COPY ./startup.sh tiddlywiki.info ./

EXPOSE 8080
ENTRYPOINT ["/app/startup.sh"] # 使用sh, not bash, and use chmod +x for this scriptshell
