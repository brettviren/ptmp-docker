FROM debian:buster
MAINTAINER Brett Viren <brett.viren@gmail.com>

COPY packages packages

RUN apt-get update -qq \
 && ln -sf /usr/share/zoneinfo/UTC /etc/localtime \
 && apt-get -y install $(cat /packages) \
 && rm -f /packages \
 && apt-get clean \
 && rm -rf /usr/share/locale/[a-df-z]* 



