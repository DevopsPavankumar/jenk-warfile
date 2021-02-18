FROM tomcat:8
COPY target/*.war /usr/local/tomcat8/webapps/
