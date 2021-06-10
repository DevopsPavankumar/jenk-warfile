FROM tomcat:7
COPY target/*.war /usr/local/tomcat7/webapps/
