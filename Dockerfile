FROM Tomcat:8
COPY target/*.war /usr/local/tomcat8/webapps/
