FROM node:alpine

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"

WORKDIR /app
RUN corepack enable && \
    pnpm install -g tiddlywiki@latest
COPY ./startup.sh tiddlywiki.info ./

EXPOSE 8080
ENTRYPOINT ["/app/startup.sh"] # 使用sh, not bash, and use chmod +x for this scriptshell
