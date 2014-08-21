FROM goldeneggg/hubot-scripts

MAINTAINER goldeneggg

# install hubot-irc
WORKDIR /root/mybot
RUN npm install hubot-irc --save && npm install

# set hubot irc environment
ENV HUBOT_IRC_NICK hubot
ENV HUBOT_IRC_UNFLOOD true
#ENV HUBOT_IRC_SERVER <YOUR_IRC_SERVER>
#ENV HUBOT_IRC_ROOMS <YOUR_IRC_ROOM>

# run hubot-irc
ENTRYPOINT ["bin/hubot", "-a", "irc"]
CMD ["--name", "myhubot"]
