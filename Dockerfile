FROM goldeneggg/hubot

MAINTAINER goldeneggg

# install hubot-irc
WORKDIR /root/mybot
RUN npm install hubot-irc --save && npm install

# set hubot irc environment
# HUBOT_IRC_SERVER and HUBOT_IRC_ROOMS must be indicated by `docker run -e ...`
ENV HUBOT_IRC_NICK hubot
ENV HUBOT_IRC_UNFLOOD true
#ENV HUBOT_IRC_SERVER <YOUR_IRC_SERVER>
#ENV HUBOT_IRC_ROOMS <YOUR_IRC_ROOM>

# add scripts
ADD ADD_FILES/root/mybot/scripts/example_sushi.coffee /root/mybot/scripts/example_sushi.coffee
#ADD ADD_FILES/root/mybot/scripts/hoge.coffee /root/mybot/scripts/hoge.coffee
#ADD ADD_FILES/root/mybot/scripts/huga.coffee /root/mybot/scripts/huga.coffee

# run redis-server and hubot("-a irc")
RUN /etc/init.d/redis-server start
ENTRYPOINT ["bin/hubot", "-a", "irc"]
CMD ["--name", "myhubot"]
