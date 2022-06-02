FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add git

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

FROM ruby:3.0.0