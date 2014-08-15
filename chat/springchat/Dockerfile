FROM tomee_srv
MAINTAINER Thiago Veronezi

RUN cd /opt && git clone https://github.com/tveronezi/springchat.git
RUN cd /opt/springchat && mvn clean install

RUN rm -Rf /opt/tomee/webapps/*
RUN cp /opt/springchat/target/springchat-1.0-SNAPSHOT.war /opt/tomee/webapps
RUN cd /opt/tomee/webapps && mv springchat-1.0-SNAPSHOT.war ROOT.war

RUN cp /opt/springchat/src/main/tomee/network/conf/system.properties /opt/tomee/conf/
ADD tomee.xml /opt/tomee/conf/
RUN cp /opt/springchat/src/main/tomee/network/conf/tomcat-users.xml /opt/tomee/conf/

ENV JAVA_OPTS -Xmx512m -XX:PermSize=256m 

CMD ["/usr/bin/supervisord"]

