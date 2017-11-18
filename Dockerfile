###################################
# The Zen Garden :: Hastebin      #
#     Build Tag: 171118-207       #
###################################
FROM docker.thezengarden.net/alpine-base
MAINTAINER Chris Hammer <chris@thezengarden.net>


# Update base and install required deps:
########################################
RUN apk update
RUN apk add redis nodejs nodejs-npm git procps


# Add volume for persistant storage:
####################################
VOLUME tzg_hastebin:/haste-server


# Clone git repo & run installer
##############################################
RUN /bin/bash -l -c "cd / \
                     && git clone https://github.com/seejohnrun/haste-server.git \
                     && cd haste-server \
                     && npm install"


# Copy init file in place:
##########################
COPY init/init.sh /


# Expose default port, and set init script
# as default process:
##########################################
EXPOSE 7777
CMD ["/init.sh"]


#################################################################################################
# Run via:                                                                                      #
# docker run -ti -d --name haste --hostname haste -p 7777:7777 docker.thezengarden.net/hastebin #
#################################################################################################
