FROM alpine
FROM ruby:3.0.0

RUN apk update && \
    apk upgrade && \
    apk add git

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

