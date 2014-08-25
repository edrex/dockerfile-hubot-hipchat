# Dockerfile for hubot-irc

## Usage

### Pull

```bash
$ docker pull goldeneggg/hubot-irc
```

#### Build
If you would like to build on local, you should run the following `docker build` command.

```bash
$ docker build -t goldeneggg/hubot-irc .
```

### RUN

* join to IRC (require 2 environment value `HUBOT_IRC_SERVER` and `HUBOT_IRC_ROOMS`)

```bash
$ docker run -e HUBOT_IRC_SERVER=<YOUR_HUBOT_IRC_SERVER> -e HUBOT_IRC_ROOMS=<YOUR_HUBOT_IRC_ROOM> -p 9980:9980 -t -d goldeneggg/hubot-irc
```

* with `--name` option

```bash
$ docker run -e HUBOT_IRC_SERVER=<YOUR_HUBOT_IRC_SERVER> -e HUBOT_IRC_ROOMS=<YOUR_HUBOT_IRC_ROOM> -p 9980:9980 -t -d goldeneggg/hubot-irc --name hoge
```

### HTTP Listener

* Since `PORT` environment is `9980` and exposed port `9980`, you can access HTTP listener
    * ex: `http://<HOST_MACHINE_IP (or HOSTNAME)>:9980/hubot/version` by GET method.
