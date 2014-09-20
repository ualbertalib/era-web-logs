# ERA Web Logs #

A simple web application provides access to ERA log files from your browser. 

### Setup ###

* Edit ${tomcat}/conf/tomcat-users.xml and add eraadmin role and user.
* Copy src/main/resources/eralogs_global.xsl to /var/www/sites/era/conf.
* Deploy eralogs.war to tomcat server.
* Create a symbolic link to tomcat logs directory in the web application.
