FROM docker.stackable.tech/stackable/hadoop:3.3.6-stackable24.7.0

# useradd is not available in above image
USER root

RUN <<EOF cat >> /etc/password
185:x:185:185:fink-broker user:/:/sbin/nologin
EOF

RUN <<EOF cat >> /etc/group
185:x:185:
EOF

USER stackable