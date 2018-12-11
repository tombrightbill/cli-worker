FROM golang:alpine

LABEL "maintainer"="tombrightbill <tombrightbill@gmail.com>"
LABEL "repository"="https://github.com/tombrightbill/cli-worker"
LABEL "version"="1.0.1"

LABEL "com.github.actions.name"="Deploy Worker with Golang CLI"
LABEL "com.github.actions.description"="Deploy a Worker with the CF CLI"
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="orange"

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.8/main" >> /etc/apk/repositories

RUN apk --no-cache add -u build-base \
    apk --no-cache add git \
    && go get -u github.com/ejcx/cf

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]