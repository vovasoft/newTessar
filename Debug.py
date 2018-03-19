
data = ''

webUrl = 'tessar-web-server/src/main/resources/application.properties'
with open(webUrl, 'r+') as f:
    for line in f.readlines():
        if(line.find('spring.datasource.url') != -1):
        	line = line.replace('localhost','192.168.10.102')
        if(line.find('spring.datasource.username') != -1):
        	line = line.replace('tessar','root')
        if(line.find('spring.datasource.password') != -1):
        	line = line.replace("fnZxS18AbQH5OhLd",'ENC(GDdZL0OhCYhIDhK0M/YbMw==)')
        data += line

with open(webUrl, 'w+',encoding="utf8") as f:
    f.writelines(data)

data = ''

nettyUrl = 'tessar-netty-server/src/main/resources/batis-conf.xml'
with open(nettyUrl, 'r+',encoding="utf8") as f:
    for line in f.readlines():
        if(line.find('<property name="url" value="jdbc:mysql') != -1):
       		line = line.replace('localhost','192.168.10.102')
        if(line.find('property name="username"') != -1):
        	line = line.replace('tessar','root')
        if(line.find('property name="password"') != -1):
        	line = line.replace("fnZxS18AbQH5OhLd",'root')
        data += line

with open(nettyUrl, 'w+',encoding="utf8") as f:
    f.writelines(data)

data = ''

nettyUrlMongo = 'tessar-netty-server/src/main/resources/spring-mongodb.xml'
with open(nettyUrlMongo, 'r+',encoding="utf8") as f:
    for line in f.readlines():
        if(line.find('constructor-arg name="host"') != -1):
            line = line.replace('localhost','192.168.10.102')
        data += line

with open(nettyUrlMongo, 'w+',encoding="utf8") as f:
    f.writelines(data)