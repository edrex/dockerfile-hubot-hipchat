FROM goldeneggg/hubot

MAINTAINER goldeneggg

# install hubot-irc
WORKDIR /root/mybot
RUN npm install hubot-irc --save && npm install

# set hubot irc environment
# HUBOT_IRC_SERVER and HUBOT_IRC_ROOMS must be indicated by `docker run -e ...`
ENV HUBOT_IRC_NICK hubot
ENV HUBOT_IRC_UNFLOOD true

# run hubot("-a irc")
# HTTP Listener listen port 9980
ENV PORT 9980
EXPOSE 9980
ENTRYPOINT ["bin/hubot", "-a", "irc"]
CMD ["--name", "myhubot"]
