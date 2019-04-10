FROM centos:latest

LABEL maintainer="cool.docker@coolwinkydoggendoodle.com"

RUN yum -y update && \
       yum -y install epel-release && \
       yum -y install icecast  && \
       yum clean all

RUN tar -xzf sc_serv2_linux_x64-latest.tar.gz && \
    /bin/rm sc_serv2_linux_x64-latest.tar.gz

VOLUME ["/etc/icecast/","/var/log/icecast"]

EXPOSE 8000 8001 8002
CMD ["/bin/icecast", "/etc/"]
