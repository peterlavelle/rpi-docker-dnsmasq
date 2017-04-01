Built image at https://hub.docker.com/r/plavelle/rpi-docker-dnsmasq/

Note: This image is configured to use Google's public DNS servers. You can change this by modifying the etc/dnsmasq.conf file in your container.

Example:

>docker run --restart=always --name dnsmasq -p 53:53/udp -d plavelle/rpi-dnsmasq
