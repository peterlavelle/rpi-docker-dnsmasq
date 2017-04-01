# DOCKER-VERSION 1.5.0

############################################################
# Dockerfile install dnsmasq
# Based on resin/rpi-raspbian
############################################################

FROM resin/rpi-raspbian
MAINTAINER Peter Lavelle <peter@solderintheveins.co.uk>
VOLUME ["/etc"]
RUN apt-get update && apt-get -q -y install dnsmasq && apt-get clean && rm -rf /var/lib/dpkg/lists/* && groupadd nogroup && useradd -G nogroup -s /bin/false nobody
ADD ./etc/ /etc
CMD dnsmasq -k

EXPOSE 53/udp
