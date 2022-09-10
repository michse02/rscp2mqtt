FROM debian
USER root
RUN echo "nameserver 8.8.8.8" > /etc/resolv.conf && apt-get update && apt-get upgrade -y && apt-get install -y libmosquitto-dev git g++ make && git clone https://github.com/michse02/rscp2mqtt.git &&  cd rscp2mqtt && make && mkdir -p /opt/rscp2mqtt && cp -a rscp2mqtt /opt/rscp2mqtt/
CMD /opt/rscp2mqtt/rscp2mqtt
