FROM tomee_srv
MAINTAINER Thiago Veronezi

RUN cd /opt && git clone https://github.com/tveronezi/jchat.git
RUN cd /opt/jchat && mvn clean install

RUN rm -Rf /opt/tomee/webapps/*
RUN cp /opt/jchat/target/jchat-1.0-SNAPSHOT.war /opt/tomee/webapps
RUN cd /opt/tomee/webapps && mv jchat-1.0-SNAPSHOT.war ROOT.war

RUN cp /opt/jchat/src/main/tomee/standalone/conf/loginScript.js /opt/tomee/conf/
RUN cp /opt/jchat/src/main/tomee/standalone/conf/system.properties /opt/tomee/conf/
ADD tomee.xml /opt/tomee/conf/
RUN cp /opt/jchat/src/main/tomee/standalone/conf/login.config /opt/tomee/conf/

ENV JAVA_OPTS -Xmx512m -XX:PermSize=256m -Djava.security.auth.login.config=/opt/tomee/conf/login.config

CMD ["/usr/bin/supervisord"]

