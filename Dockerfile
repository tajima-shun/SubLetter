FROM tomcat:9.0-jdk11-temurin
# FROM tomcat:9.0-jdk17-temurin  ← EclipseがJava17ならこちらを使用

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/Sub-Letter.war /usr/local/tomcat/webapps/ROOT.war
COPY conf/server.xml /usr/local/tomcat/conf/server.xml

ENV CATALINA_OPTS="-DPORT=${PORT}"

CMD ["/bin/sh", "-c", "export CATALINA_OPTS='-DPORT='\"$PORT\"'' && catalina.sh run"]
