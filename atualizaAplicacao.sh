#!/bin/bash

./grailsw war
docker-compose up -d --no-deps --build tomcat_1
sleep 30
docker-compose up -d --no-deps --build tomcat_2