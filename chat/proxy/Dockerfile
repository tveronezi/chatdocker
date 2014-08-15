FROM phusion/baseimage 
MAINTAINER Thiago Veronezi

RUN apt-get update
RUN apt-get install -y supervisor nginx

ADD supervisord.conf /etc/
ADD jchat /etc/nginx/sites-enabled/
ADD springchat /etc/nginx/sites-enabled/

CMD ["/usr/bin/supervisord"]

