FROM ruby:3-alpine
RUN apk update && \
    apk upgrade && \
    apk add git

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]