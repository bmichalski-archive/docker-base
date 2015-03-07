FROM ubuntu:14.04

COPY conf/root/base/detect-proxy.sh /root/base/detect-proxy.sh
COPY conf/root/base/configure-proxy.sh /root/base/configure-proxy.sh

RUN chmod u+x /root/base/detect-proxy.sh
RUN chmod u+x /root/base/configure-proxy.sh

ENV HOME /root

WORKDIR /root

RUN \
  base/configure-proxy.sh && \
  apt-get update

COPY conf/root/base/configure.sh /root/base/configure.sh
COPY conf/root/base/on-startup.sh /root/base/on-startup.sh

RUN chmod u+x /root/base/configure.sh
RUN chmod u+x /root/base/on-startup.sh

CMD \
  bash -c "/root/base/on-startup.sh && bash"

