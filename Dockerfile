FROM tomcat:latest
ADD ./target/project-1.0-RAMA.war /usr/local/tomcat/webapps/
EXPOSE 80
CMD ["catalina.sh", "run"]
