FROM alpine:latest
MAINTAINER Training
RUN apk update
RUN apk add vim
RUN apk add curl
CMD echo Hello World!! I am learning Docker and building Images.
