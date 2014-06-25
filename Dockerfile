FROM ubuntu:14.04
MAINTAINER Tom Deryckere <tom.deryckere@ask.com>
RUN apt-get install nodejs -y
# Package manager installs nodejs. Forever looks for node
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN apt-get install npm -y
RUN npm install -g grunt -y
RUN npm install -g grunt-cli -y
RUN npm install -g forever -y
