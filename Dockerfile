
FROM jenkins/inbound-agent:latest-alpine
USER root
RUN apk add --update docker docker-compose 
RUN addgroup jenkins docker
USER jenkins

