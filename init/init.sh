#!/bin/bash

cd /haste-server
redis-server /etc/redis.conf&
npm start
