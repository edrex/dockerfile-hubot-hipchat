# Dockerfile for hubot-irc

## Usage

### Pull
If with your scripts, base container is [dockerfile-hubot-scripts/Dockerfile at master · goldeneggg/dockerfile-hubot-scripts](https://github.com/goldeneggg/dockerfile-hubot-scripts/blob/master/Dockerfile)

```bash
$ docker pull goldeneggg/hubot-irc:with-scripts
```

#### Build
If you would like to build on local, you should run the following `docker build` command.

```bash
$ cd <DOCKERFILE_DIR>
$ docker build -t goldeneggg/hubot-irc:with-scripts .
```

### RUN

* join to IRC (require 2 environment value `HUBOT_IRC_SERVER` and `HUBOT_IRC_ROOMS`)

```bash
$ docker run -e HUBOT_IRC_SERVER=<YOUR_HUBOT_IRC_SERVER> -e HUBOT_IRC_ROOMS=<YOUR_HUBOT_IRC_ROOM> -e HUBOT_GITHUB_TOKEN=<YOUR_GITHUB_TOKEN> -p 9980:9980 -t -d goldeneggg/hubot-irc:with-scripts
```

* with `--name` option

```bash
$ docker run -e HUBOT_IRC_SERVER=<YOUR_HUBOT_IRC_SERVER> -e HUBOT_IRC_ROOMS=<YOUR_HUBOT_IRC_ROOM> -e HUBOT_GITHUB_TOKEN=<YOUR_GITHUB_TOKEN> -p 9980:9980 -t -d goldeneggg/hubot-irc:with-scripts --name=hoge
```

### HTTP Listener

* Since `PORT` environment is `9980` and exposed port `9980`, you can access HTTP listener
    * ex: `http://<HOST_MACHINE_IP (or HOSTNAME)>:9980/hubot/version` by GET method.
