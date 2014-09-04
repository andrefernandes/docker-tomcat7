#!/bin/bash

if [ ! -f /opt/.tomcat_admin_created ]; then
    /opt/create_tomcat_admin_user.sh
fi

exec ${CATALINA_HOME}/bin/catalina.sh run

