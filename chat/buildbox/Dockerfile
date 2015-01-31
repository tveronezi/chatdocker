FROM centos
MAINTAINER Thiago Veronezi

RUN yum install -y subversion wget tar
RUN yum install -y java-1.7.0-openjdk-devel.x86_64 

ADD http://apache.parentingamerica.com/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz /opt/apache-maven-3.0.5-bin.tar.gz
RUN cd /opt && tar xzf apache-maven-3.0.5-bin.tar.gz && rm apache-maven-3.0.5-bin.tar.gz
ENV M2_HOME /opt/apache-maven-3.0.5
ENV M2 $M2_HOME/bin
ENV PATH $M2:$PATH
ENV MAVEN_OPTS -Xms256m -Xmx2000m -XX:MaxPermSize=256m 

RUN chmod -R go-w /opt
CMD ["/usr/bin/bash"]

