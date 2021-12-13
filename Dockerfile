FROM jenkins/jenkins:alpine
MAINTAINER Luna <git@nyx.nova.fail>

ENV LANG=C.UTF-8 \
TZ=UTC0 \
FIX_PERMISSIONS=true

USER root
COPY root/ /
RUN /bin/sh /root/install.sh

USER ${user}
