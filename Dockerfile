FROM fedora:27
MAINTAINER hhovsepy@redhat.com

COPY cfme_war.war .
RUN ls -la

RUN dnf install -y wget unzip

RUN wget http://download-ipv4.eng.brq.redhat.com/released/JBEAP-7/7.1.0/jboss-eap-7.1.0.zip
RUN unzip jboss-eap-7.1.0.zip -d /opt/

COPY cfme_war.war /opt/jboss-eap-7.1/standalone/deployments/

RUN nohup ./opt/jboss-eap-7.1/bin/standalone.sh  -b 0.0.0.0 -bmanagement 0.0.0.0 &

EXPOSE 8080
