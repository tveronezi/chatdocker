FROM chat_apps
MAINTAINER Thiago Veronezi

RUN cp /opt/source/springchat/target/springchat-1.0-SNAPSHOT.war /opt/tomee/webapps
RUN cd /opt/tomee/webapps && mv springchat-1.0-SNAPSHOT.war ROOT.war

ADD tomee.xml /opt/tomee/conf/

ENV JAVA_OPTS -Xmx512m -XX:PermSize=256m 

RUN rm -Rf /opt/source
RUN rm -Rf ~/.m2
CMD ["/usr/bin/supervisord"]
