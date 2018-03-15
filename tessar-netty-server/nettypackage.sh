cd /Users/wangyang/newTessar/tessar-netty-server
echo start package -------tessar netty server---------
mvn clean package -DskipTests
scp /Users/wangyang/newTessar/tessar-netty-server/target/TessarNettyServer.jar root@s1:~/tessartest/
ssh root@s1 jps
echo ==================================================
ssh root@s1 start_tessarnetty.sh
ssh root@s1 jps
