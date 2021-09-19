# NGINX OAuth

[![Open in Visual Studio Code](.devcontainer/open-in-vscode.svg)](vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=git@github.com:bryant-finney/nginx-oauth.git) [(link)](vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=git@github.com:bryant-finney/nginx-oauth.git)

[![Open in Visual Studio Code - Insiders](.devcontainer/open-in-vscode-insiders.svg)](vscode-insiders://ms-vscode-remote.remote-containers/cloneInVolume?url=git@github.com:bryant-finney/nginx-oauth.git) [(link)](vscode-insiders://ms-vscode-remote.remote-containers/cloneInVolume?url=git@github.com:bryant-finney/nginx-oauth.git)

This scratchpad contains `gist`s and `Dockerfile`s for configuring NGINX to validate
OAuth2.0 tokens.

## Project Structure

This project can be separated into three components:

1. an [`NGINX`](./nginx) reverse proxy server
2. a dummy [`echo`](./echo) server to mock a proxied API server
3. a dummy [`auth`](./auth) server to mock an `OAuth2.0` authorization server

Each component provides a Docker container orchestrated using
[`docker-compose.yml`](./docker-compose.yml).

## Setup

Clicking one of [the badges above](#nginx-oauth) performs the following:

- pull a base ubuntu image
- launch a container with it and setup docker-in-docker
- clone the repo into the container using `ssh`
- run `direnv allow` to allow `direnv` to auto-run [`.envrc`](.envrc)
- setup an environment inside the container by creating env variables and modifying `/etc/hosts`
- build images and launch containers using `docker-compose.yml`
- forward ports `80` and `443` to the host's `8080` and `8443`
