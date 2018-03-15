#!/bin/bash
kill -9 `jps | grep Netty| awk '{print $1}'`
java -jar ~/tessartest/tessarNettyServer.jar 9999 >> ~/tessartest/lognetty.file 2>&1 &
