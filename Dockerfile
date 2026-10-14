FROM tomcat:9.0-jdk17-temurin


# Optional: Clean existing default ROOT app

RUN rm -rf /usr/local/tomcat/webapps/ROOT


# Copy your packaged Maven WAR file as the default root application

COPY target/mavenweb.war /usr/local/tomcat/webapps/ROOT.war


EXPOSE 8080


# Run Tomcat in foreground

CMD ["catalina.sh", "run"]
