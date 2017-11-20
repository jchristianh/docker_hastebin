###################################
# The Zen Garden :: Hastebin      #
#     Build Tag: 171120-1200      #
###################################
FROM alpine:latest
MAINTAINER Chris Hammer <chris@thezengarden.net>


# Update base and install required deps:
########################################
RUN apk update
RUN apk add nodejs nodejs-npm git procps bash


# Clone git repo & run installer:
#################################
RUN /bin/bash -l -c "cd / \
                     && git clone https://github.com/seejohnrun/haste-server.git \
                     && cd haste-server \
                     && npm install"


# Expose default port:
######################
EXPOSE 7777


# Set CWD upon launch to hastebin-server
# install path:
########################################
WORKDIR /haste-server


# By default, kick off hastebin-server:
#######################################
CMD ["npm start"]
