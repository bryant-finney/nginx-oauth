FROM nginx:stable-alpine AS base

RUN apk update && apk add nginx-mod-http-js

COPY --chown=root:root ./etc /etc
COPY --chown=root:root ./usr /usr

LABEL org.opencontainers.image.source https://github.com/bryant-finney/nginx-oauth
