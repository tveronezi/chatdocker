FROM centos 
MAINTAINER Thiago Veronezi

ADD nginx.repo /etc/yum.repos.d/

RUN yum install -y python-setuptools nginx
RUN easy_install pip
RUN pip install supervisor

ADD supervisord.conf /etc/

RUN rm /etc/nginx/conf.d/*
ADD jchat.conf /etc/nginx/conf.d/
ADD springchat.conf /etc/nginx/conf.d/

CMD ["/usr/bin/supervisord"]

