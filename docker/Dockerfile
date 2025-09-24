# Asterisk for Kubernetes
FROM alpine:3.22

RUN apk update
# Install Asterisk
RUN apk add asterisk asterisk-sample-config asterisk-prometheus asterisk-sounds-en && \
   apk cache clean

# Add config files
ADD configs/extensions.conf /etc/asterisk/extensions.conf
ADD configs/http.conf /etc/asterisk/http.conf
ADD configs/modules.conf /etc/asterisk/modules.conf
ADD configs/sorcery.conf /etc/asterisk/sorcery.conf
ADD configs/pjsip.conf /etc/asterisk/pjsip.conf
ADD configs/prometheus.conf /etc/asterisk/prometheus.conf
ADD configs/extconfig.conf /etc/asterisk/extconfig.conf
# Some useful scripts
COPY scripts /scripts

WORKDIR /etc/asterisk

COPY entrypoint.sh /

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
CMD []
