FROM golang:alpine

LABEL "maintainer"="tombrightbill <tombrightbill@gmail.com>"
LABEL "repository"="https://github.com/tombrightbill/cli-worker"
LABEL "version"="1.0.1"

LABEL "com.github.actions.name"="Deploy Worker with Golang CLI"
LABEL "com.github.actions.description"="Deploy a Worker with the CF CLI"
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="orange"

RUN apk add --no-cache curl \
    && apk add --no-cache git \
    && curl -o /go/bin/cf -L https://github.com/ejcx/cf/releases/download/1.0.1/cf-linux \
    && chmod +x /go/bin/cf 

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]