FROM centos:8

LABEL maintainer="kihi"

COPY google-cloud-sdk.repo /etc/yum.repos.d/

RUN curl -L https://download.docker.com/linux/centos/docker-ce.repo > /etc/yum.repos.d/

RUN dnf -y update \
 && dnf -y install docker-ce \
 && dnf -y install git \
 && dnf -y install google-cloud-sdk \
 && dnf clean all

WORKDIR /root

CMD ["/sbin/init"]
