FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ENV SKYDNS_PATH github.com/skynetservices/skydns
ENV SKYDNS_REPO https://${SKYDNS_PATH}.git
ENV SKYDNS_BRANCH master

ENV GOPATH /usr:/usr/src/${SKYDNS_PATH}/Godeps/_workspace

RUN apk update && \
  apk add \
    build-base \
    git \
    mercurial \
    go@community && \
  git clone -b ${SKYDNS_BRANCH} ${SKYDNS_REPO} /usr/src/${SKYDNS_PATH} && \
  go get -d ${SKYDNS_PATH}/... && \
  go install ${SKYDNS_PATH} && \
  apk del build-base git mercurial go && \
  rm -rf /var/cache/apk/* && \
  rm -r \
    /usr/src/* \
    /usr/pkg/* \
    /usr/lib/go

ADD rootfs /
EXPOSE 53 53/udp

WORKDIR /root
CMD ["/bin/s6-svscan", "/etc/s6"]
