FROM buildbox
MAINTAINER Thiago Veronezi

# Build our apps from source code
RUN mkdir -p /opt/source
RUN cd /opt/source && git clone https://github.com/tveronezi/jchat.git
RUN cd /opt/source/jchat && mvn clean install
RUN cd /opt/source && git clone https://github.com/tveronezi/springchat.git
RUN cd /opt/source/springchat && mvn clean install

# Download and install TomEE
RUN yum install -y python-setuptools
RUN easy_install pip
RUN pip install supervisor
ADD supervisord.conf /etc/

ADD http://apache.arvixe.com/tomee/tomee-1.7.0/apache-tomee-1.7.0-plus.tar.gz /opt/apache-tomee-1.7.0-plus.tar.gz
RUN cd /opt && tar xzf apache-tomee-1.7.0-plus.tar.gz && rm apache-tomee-1.7.0-plus.tar.gz
RUN cd /opt && mv apache-tomee-plus-1.7.0 tomee
RUN mkdir -p /opt/tomee/logs/

RUN rm -Rf /opt/tomee/webapps/*

CMD ["/usr/bin/supervisord"]

