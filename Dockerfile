FROM goldeneggg/hubot

MAINTAINER goldeneggg

# install hubot-irc
WORKDIR /root/mybot
RUN npm install hubot-irc --save && npm install

# set hubot irc environment
ENV HUBOT_IRC_NICK hubot
ENV HUBOT_IRC_UNFLOOD true
#ENV HUBOT_IRC_SERVER <YOUR_IRC_SERVER>
#ENV HUBOT_IRC_ROOMS <YOUR_IRC_ROOM>

# add script
ADD ADD_FILES/root/mybot/scripts/example_sushi.coffee scripts/example_sushi.coffee
#ADD ADD_FILES/root/mybot/scripts/hoge.coffee scripts/hoge.coffee
#ADD ADD_FILES/root/mybot/scripts/huga.coffee scripts/huga.coffee

# run hubot-irc
ENTRYPOINT ["bin/hubot", "-a", "irc"]
CMD ["--name", "myhubot"]
