FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    krb5-admin-server krb5-kdc supervisor \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /var/log/supervisord

EXPOSE 88 749

COPY supervisord.conf /etc/supervisord.conf
COPY kadm5.acl /etc/krb5kdc/kadm5.acl
COPY kdc.conf /etc/krb5kdc/kdc.conf
COPY krb5.conf /etc/krb5.conf

RUN kdb5_util create -s -P masterpassword && \
    kadmin.local -q "addprinc admin/admin"

WORKDIR /app

COPY config.sh /app/config.sh

CMD ["/bin/bash", "-c", "/app/config.sh && /usr/bin/supervisord -n -c /etc/supervisord.conf"]