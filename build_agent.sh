#!/bin/sh

SECRET=$(cat secret)
URL=$(cat url)
AGENT_NAME=$(cat agent_name)
JDG=$(stat -c '%g' /var/run/docker.sock)
export JENKINS_SECRET=$SECRET \
  && export JENKINS_DOCKER_GROUP=$JDG \
  && export JENKINS_URL=$URL \
  && export JENKINS_AGENT_NAME=$AGENT_NAME \
  && docker-compose up --build


