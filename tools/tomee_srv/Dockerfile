FROM buildbox
MAINTAINER Thiago Veronezi

RUN yum install -y python-setuptools
RUN easy_install pip
RUN pip install supervisor
ADD supervisord.conf /etc/

ADD https://dist.apache.org/repos/dist/dev/tomee/staging-1039/tomee-1.7.0/apache-tomee-1.7.0-plus.tar.gz /opt/apache-tomee-1.7.0-plus.tar.gz
RUN cd /opt && tar xzf apache-tomee-1.7.0-plus.tar.gz && rm apache-tomee-1.7.0-plus.tar.gz
RUN cd /opt && mv apache-tomee-plus-1.7.0 tomee
RUN mkdir -p /opt/tomee/logs/

RUN rm -Rf /opt/tomee/webapps/ROOT
RUN rm -Rf /opt/tomee/webapps/docs
RUN rm -Rf /opt/tomee/webapps/host-manager
RUN rm -Rf /opt/tomee/webapps/manager

CMD ["/usr/bin/supervisord"]

