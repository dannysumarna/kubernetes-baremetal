FROM haproxy:2.4.8-alpine

COPY 99-rootless.conf /etc/sysctl.d/99-rootless.conf

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
