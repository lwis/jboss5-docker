FROM lwis/java5
MAINTAINER Lewis

RUN apt-get update && apt-get install unzip ;\
    wget http://sourceforge.net/projects/jboss/files/JBoss/JBoss-5.1.0.GA/jboss-5.1.0.GA.zip/download -O jboss-5.1.0.GA.zip ;\
    unzip jboss-5.1.0.GA.zip ;\
    mv jboss-5.1.0.GA /opt ;\
    rm jboss-5.1.0.GA.zip ;\
    cd /opt/jboss-5.1.0.GA/bin && chmod +x *.sh

EXPOSE 8080
EXPOSE 8787
