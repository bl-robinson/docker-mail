FROM debian:bookworm

RUN apt update
RUN apt install -y \
  rsyslog \
  mailutils \
  libsasl2-modules \
  postfix \
  postfix-policyd-spf-python \
  opendkim \
  opendkim-tools \
  dovecot-imapd \
  dovecot-core

RUN adduser --disabled-password --comment "" benr

COPY config/dovecot/dovecot.conf /etc/dovecot/dovecot.conf
COPY config/opendkim/opendkim.conf /etc/opendkim/opendkim.conf
COPY config/postfix /etc/postfix

COPY config/postfix/aliases /etc/aliases

RUN echo "mail.home.blrobinson.uk" >> /etc/mailname

RUN newaliases
RUN postmap /etc/postfix/virtual

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]