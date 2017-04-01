############################################################
# Dockerfile install dnsmasq
############################################################

FROM dragonheim/rpi-alpine
MAINTAINER Peter Lavelle <peter@solderintheveins.co.uk>
RUN apk --no-cache update && apk add dnsmasq
VOLUME ["/etc"]
ADD ./etc/ /etc
ENTRYPOINT["/usr/sbin/dnsmasq", "-k"]
EXPOSE 53/udp
