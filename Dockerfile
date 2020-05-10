FROM centos:7

LABEL maintainer="cool.docker@coolwinkydoggendoodle.com"

RUN yum -y update && \
       yum -y install epel-release && \
       yum -y install icecast  && \
       yum clean all

VOLUME ["/etc/icecast/icecast.xml","/var/log/icecast"]
USER 1001
EXPOSE 8000 8001 8002
ENTRYPOINT ["/bin/icecast", "-c", "/etc/icecast/icecast.xml"]
