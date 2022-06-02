FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add git && \
    apt-get update && \
    apt-get install -y ruby

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
