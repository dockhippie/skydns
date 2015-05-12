FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ENV SKYDNS_PATH github.com/skynetservices/skydns
ENV SKYDNS_REPO https://${SKYDNS_PATH}.git
ENV SKYDNS_BRANCH master

ENV GOPATH /usr

RUN apk add --update build-base git go && \
  git clone -b ${SKYDNS_BRANCH} ${SKYDNS_REPO} ${GOPATH}/src/${SKYDNS_PATH} && \
  go get ${SKYDNS_PATH}/... && \
  go install ${SKYDNS_PATH} && \
  apk del build-base git go && \
  rm -rf /var/cache/apk/* && \
  rm -r /usr/src/*

ADD rootfs /
EXPOSE 53 53/udp

WORKDIR /root
CMD ["/usr/bin/s6-svscan","/etc/s6"]
