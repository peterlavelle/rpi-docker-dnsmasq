############################################################
# Dockerfile install dnsmasq
############################################################

FROM nventiveux/docker-alpine-rpi
MAINTAINER Peter Lavelle <peter@solderintheveins.co.uk>
RUN apk update && apk-upgrade && apk add bash dnsmasq
ADD ./etc/ /etc
ENTRYPOINT["/usr/sbin/dnsmasq", "-k"]
EXPOSE 53/udp
