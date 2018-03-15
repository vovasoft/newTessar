#!/bin/bash

kill -9 `jps | grep WebServer| awk '{print $1}'`
java -jar ~/tessartest/TessarWebServer.jar >> ~/tessartest/log.file 2>&1 &
