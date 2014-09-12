# Dockerfile for hubot-hipchat

## Usage

### Pull

```bash
$ docker pull edrex/hubot-hipchat
```

#### Build
If you would like to build on local, you should run the following `docker build` command.

```bash
$ docker build -t edrex/hubot-hipchat .
```

### RUN

```bash
$ docker run -e HUBOT_HIPCHAT_JID="98250_1206302@chat.hipchat.com" -e HUBOT_HIPCHAT_PASSWORD="abcde" -e HUBOT_HIPCHAT_ROOMS="98250_development@conf.hipchat.com"  -p 9980:9980 -t -d edrex/hubot-hipchat
```

### HTTP Listener

* Since `PORT` environment is `9980` and exposed port `9980`, you can access HTTP listener
    * ex: `http://<HOST_MACHINE_IP (or HOSTNAME)>:9980/hubot/version` by GET method.
