FROM tomcat:8.0.20-jre8
#Update username and pwd login via tomcat UI
RUN sed -i '/<\/tomcat-users>/ i\<user username="admin" password="eagunu" roles="admin-gui,manager-gui"/>' /usr/local/tomcat/conf/tomcat-users.xml
#Copy war file to webapps location
COPY target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app.war


#FROM tomcat:8.0.20-jre8
# Dummy text to test
#COPY target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app.war
