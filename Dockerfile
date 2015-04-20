FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ENV GOPATH /usr

ENV SKYDNS_PATH github.com/skynetservices/skydns
ENV SKYDNS_REPO https://${SKYDNS_PATH}.git
ENV SKYDNS_BRANCH master

RUN mkdir -p /docker/libexec
ADD libexec /docker/libexec
RUN ln -sf /docker/libexec/manage /usr/bin/manage

RUN apk-install ca-certificates bind-tools build-base git go && \
  git clone -b ${SKYDNS_BRANCH} ${SKYDNS_REPO} ${GOPATH}/src/${SKYDNS_PATH} && \
  go get ${SKYDNS_PATH} && \
  go install ${SKYDNS_PATH} && \
  apk del build-base git go && \
  rm -r /usr/src/*

EXPOSE 53 53/udp

WORKDIR /docker
ENTRYPOINT ["manage"]
CMD ["start"]
