FROM goldeneggg/hubot

MAINTAINER edrex

# install hubot-hipchat
WORKDIR /root/mybot
RUN apt-get -y install libexpat1-dev libicu-dev
RUN npm install hubot-hipchat --save && npm install

# HTTP Listener listen port 9980
ENV PORT 9980
EXPOSE 9980

# run redis-server and hubot("-a hipchat")
RUN /etc/init.d/redis-server start
ENTRYPOINT ["bin/hubot", "-a", "hipchat"]
