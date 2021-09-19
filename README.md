# NGINX OAuth

[![Open in Visual Studio Code](https://open.vscode.dev/badges/open-in-vscode.svg)](vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=git@github.com:bryant-finney/nginx-oauth.git)

This scratchpad contains `gist`s and `Dockerfile`s for configuring NGINX to validate
OAuth2.0 tokens.

## Project Structure

This project can be separated into three components:

1. an [`NGINX`](./nginx) reverse proxy server
2. a dummy [`echo`](./echo) server to mock a proxied API server
3. a dummy [`auth`](./auth) server to mock an `OAuth2.0` authorization server

Each component provides a Docker container orchestrated using
[`docker-compose.yml`](./docker-compose.yml)
