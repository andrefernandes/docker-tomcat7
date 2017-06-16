docker-tomcat7
==============

CentOS 7 + IBM JDK 7 + Tomcat 7

This a plain Tomcat 7 image for general use. It contains:

* IBM JDK 7 (from base image)
* Maven (from base image)
* Tomcat 7

Thanks for the original "tutumcloud/tutum-docker-tomcat" image
for a lot of ideas.

### Useful scripts

* **build.sh** : builds the image locally (docker build)
* **runbash.sh** : convenient way to run commands on a new
container (fast-food, auto-destroy) or even to just
open a bash shell to play.

#### Some nice tests:

Open bash:

    ./runbash.sh
    bash-4.2# echo Wheeee

Show Tomcat version:

    ./runbash.sh /opt/tomcat/bin/version.sh
    Using CATALINA_BASE:   /opt/tomcat
    Using CATALINA_HOME:   /opt/tomcat
    Using CATALINA_TMPDIR: /opt/tomcat/temp
    Using JRE_HOME:        /opt/ibm/java
    Using CLASSPATH:       /opt/tomcat/bin/bootstrap.jar:/opt/tomcat/bin/tomcat-juli.jar
    Server version: Apache Tomcat/7.0.78
    Server built:   May 10 2017 15:02:19 UTC
    Server number:  7.0.78.0
    OS Name:        Linux
    OS Version:     4.4.0-79-generic
    Architecture:   amd64
    JVM Version:    pxa6470_27sr4fp5-20170421_02 (SR4 FP5)
    JVM Vendor:     IBM Corporation

Start Tomcat and expose its 8080 port on docker host:

    docker run -t -i --rm -p 8080:8080 andrefernandes/docker-tomcat7:latest
    => Creating and admin user with a random password in Tomcat
    => Done!
    ========================================================================
    You can now configure to this Tomcat server using:
    
        admin:fvPXl8Zo6euB
    
    ========================================================================
    Using CATALINA_BASE:   /opt/tomcat
    ...
    Sep 04, 2014 12:12:48 PM org.apache.catalina.startup.Catalina start
    INFO: Server startup in 771 ms

