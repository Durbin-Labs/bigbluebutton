sudo rm -rf bin/org/ sudo rm -rf /var/lib/tomcat7/webapps/bigbluebutton && sudo rm /var/lib/tomcat7/webapps/bigbluebutton.war && sudo chmod -R ugo+rwx /var/bigbluebutton && sudo chmod -R ugo+rwx /var/log/bigbluebutton && gradle clean && gradle resolveDeps && grails compile && grails war && sudo cp target/bigbluebutton-0.9.0.war /var/lib/tomcat7/webapps/bigbluebutton.war && sudo bbb-conf --clean