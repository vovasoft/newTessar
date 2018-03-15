cp -f -r /Users/wangyang/newTessar/ts-view/assets /Users/wangyang/newTessar/tessar-web-server/src/main/resources/static/
cd /Users/wangyang/newTessar/tessar-web-server
echo start package -------tessar web server---------
mvn clean package -DskipTests
scp /Users/wangyang/newTessar/tessar-web-server/target/TessarWebServer.jar root@s1:~/tessartest/
ssh root@s1 jps
echo ===================================
ssh root@s1 start_tessarweb.sh
ssh root@s1 jps
