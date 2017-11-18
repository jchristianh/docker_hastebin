#!/bin/bash

HASTENAME="tzg_hastebin"
HASTEPORT="-p 7777:7777"
HASTEIMG="docker.thezengarden.net/hastebin"
HASTETAG="latest"
HASTEVOL="-v tzg_hastebin:/haste-server"

docker run -ti -d --name ${HASTENAME} --hostname ${HASTENAME} ${HASTEVOL} ${HASTEPORT} ${HASTEIMG}:${HASTETAG}
