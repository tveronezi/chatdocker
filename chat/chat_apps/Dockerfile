FROM buildbox
MAINTAINER Thiago Veronezi

# Build our apps from source code
RUN mkdir -p /opt/source
RUN cd /opt/source && wget https://github.com/tveronezi/jchat/archive/v1.0.tar.gz && tar xvzf v1.0.tar.gz && rm v1.0.tar.gz && mv jchat-1.0 jchat && cd jchat && mvn clean install && mv target/jchat-1.0.war ../jchat.war
RUN cd /opt/source && wget https://github.com/tveronezi/springchat/archive/v1.0.tar.gz && tar xvzf v1.0.tar.gz && rm v1.0.tar.gz && mv springchat-1.0 springchat && cd springchat && mvn clean install && mv target/springchat-1.0.war ../springchat.war

# Download and install TomEE
RUN yum install -y python-setuptools
RUN easy_install pip
RUN pip install supervisor
ADD supervisord.conf /etc/

ADD http://apache.arvixe.com/tomee/tomee-1.7.1/apache-tomee-1.7.1-plus.tar.gz /opt/apache-tomee-1.7.1-plus.tar.gz
RUN cd /opt && tar xzf apache-tomee-1.7.1-plus.tar.gz && rm apache-tomee-1.7.1-plus.tar.gz
RUN cd /opt && mv apache-tomee-plus-1.7.1 tomee
RUN mkdir -p /opt/tomee/logs/

RUN rm -Rf /opt/tomee/webapps/*

CMD ["/usr/bin/supervisord"]

