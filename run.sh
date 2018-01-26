#!/bin/bash

dnf install -y wget unzip java

wget http://download-ipv4.eng.brq.redhat.com/released/JBEAP-7/7.1.0/jboss-eap-7.1.0.zip
unzip jboss-eap-7.1.0.zip -d /opt/

cp /cfme_war.war /opt/jboss-eap-7.1/standalone/deployments/

./opt/jboss-eap-7.1/bin/standalone.sh  -b 0.0.0.0 -bmanagement 0.0.0.0

