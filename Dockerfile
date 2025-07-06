# Base image with Java and Tomcat
FROM tomcat:9.0-jdk17

# Clean default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat as ROOT.war
COPY target/Dreamt-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose the Tomcat port
EXPOSE 8080

# Run Tomcat server
CMD ["catalina.sh", "run"]
