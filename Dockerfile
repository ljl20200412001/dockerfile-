FROM centos

MAINTAINER cc

RUN rm /etc/yum.repos.d/Cen*

COPY repo/* /etc/yum.repos.d/

RUN yum clean all
RUN yum repolist

RUN yum install -y vim
RUN yum install -y wget
RUN yum install -y net-tools