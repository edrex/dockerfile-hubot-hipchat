# Dockerfile for hubot-irc

## Usage

### Pull

```bash
$ docker pull goldeneggg/hubot-irc
```

### Build

```bash
$ docker build -t goldeneggg/hubot-irc .
```

### RUN

* join to IRC (require 2 environment value `HUBOT_IRC_SERVER` and `HUBOT_IRC_ROOMS`)

```bash
$ docker run -e HUBOT_IRC_SERVER=<YOUR_HUBOT_IRC_SERVER> -e HUBOT_IRC_ROOMS=<YOUR_HUBOT_IRC_ROOM> -t -d goldeneggg/hubot-irc
```

* with `--name` option

```bash
$ docker run -e HUBOT_IRC_SERVER=<YOUR_HUBOT_IRC_SERVER> -e HUBOT_IRC_ROOM=<YOUR_HUBOT_IRC_ROOM> -t -d goldeneggg/hubot-irc --name hoge
```
