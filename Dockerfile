# CentOS 7 + Oracle JDK 7 + Docker Registry UI

FROM andrefernandes/docker-java7:latest

MAINTAINER Andre Fernandes

ENV TOMCAT_MAJOR_VERSION 7
ENV TOMCAT_MINOR_VERSION 7.0.55

RUN wget http://ftp.unicamp.br/pub/apache/tomcat/tomcat-$TOMCAT_MAJOR_VERSION/v$TOMCAT_MINOR_VERSION/bin/apache-tomcat-$TOMCAT_MINOR_VERSION.tar.gz -q && \
    tar -xzf apache-tomcat-$TOMCAT_MINOR_VERSION.tar.gz && \
    rm apache-tomcat-$TOMCAT_MINOR_VERSION.tar.gz && \
    ln -s apache-tomcat-$TOMCAT_MINOR_VERSION tomcat
ADD create_tomcat_admin_user.sh /opt/create_tomcat_admin_user.sh
ADD start.sh /opt/start.sh
ENV CATALINA_HOME /opt/tomcat

EXPOSE 8080
CMD ["/opt/start.sh"]

