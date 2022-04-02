FROM centos

MAINTAINER cc

RUN rm-rf /etc/yum.repos.d/Cen*

COPY repo/* /etc/yum.repos.d/

RUN yum clean all
RUN yum repolist