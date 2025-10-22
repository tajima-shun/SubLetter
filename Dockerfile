# Java 11 + Tomcat 9
FROM tomcat:9.0-jdk11-temurin

# 既定アプリ削除（任意）
RUN rm -rf /usr/local/tomcat/webapps/*

# Eclipseで作ったWARをROOTとして配置（ファイル名は自分のWARに合わせて変更）
COPY target/Sub-Letter.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
