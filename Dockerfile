FROM fedora:27
MAINTAINER hhovsepy@redhat.com

CMD ["/bin/bash"]

COPY cfme_war.war /

COPY run.sh /

EXPOSE 8080

CMD /run.sh
