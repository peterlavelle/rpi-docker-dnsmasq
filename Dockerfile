############################################################
# Dockerfile install dnsmasq
############################################################

FROM nventiveux/docker-alpine-rpi
MAINTAINER Peter Lavelle <peter@solderintheveins.co.uk>
RUN apk --no-cache update && apk upgrade && apk --no-cache add bash dnsmasq
ADD ./etc/ /etc
USER root
ENTRYPOINT exec /usr/sbin/dnsmasq -k
EXPOSE 53/udp
