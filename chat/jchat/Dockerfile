FROM chat_apps 
MAINTAINER Thiago Veronezi

RUN cp /opt/source/jchat.war /opt/tomee/webapps
RUN cd /opt/tomee/webapps && mv jchat.war ROOT.war

RUN cp /opt/source/jchat/src/main/tomee/standalone/conf/loginScript.js /opt/tomee/conf/
RUN cp /opt/source/jchat/src/main/tomee/standalone/conf/system.properties /opt/tomee/conf/
ADD tomee.xml /opt/tomee/conf/
RUN cp /opt/source/jchat/src/main/tomee/standalone/conf/login.config /opt/tomee/conf/

ENV JAVA_OPTS -Xmx512m -XX:PermSize=256m -Djava.security.auth.login.config=/opt/tomee/conf/login.config

RUN rm -Rf /opt/source
RUN rm -Rf ~/.m2
CMD ["/usr/bin/supervisord"]
