FROM tomee_srv 
MAINTAINER Thiago Veronezi

ADD nginx.repo /etc/yum.repos.d/
RUN yum install -y nginx
ADD supervisord.conf /etc/
ADD proxy.conf /etc/nginx/
ADD jchat /etc/nginx/sites-enabled/
ADD springchat /etc/nginx/sites-enabled/

CMD ["/usr/bin/supervisord"]

