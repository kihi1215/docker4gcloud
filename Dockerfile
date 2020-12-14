FROM centos:8

LABEL maintainer="kihi"

COPY google-cloud-sdk.repo /etc/yum.repos.d/

RUN curl -L https://download.docker.com/linux/centos/docker-ce.repo > /etc/yum.repos.d/
# RUN dnf -y update
RUN dnf -y install docker-ce
RUN dnf -y install git
RUN dnf -y install google-cloud-sdk
RUN dnf clean all

WORKDIR /root

CMD ["/sbin/init"]
