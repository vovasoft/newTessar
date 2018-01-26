CREATE TABLE user (
  id int PRIMARY KEY auto_increment,
  name varchar(20) NOT NULL,
  passwd varchar(255) NOT NULL
);



create TABLE AdFb
(id int PRIMARY KEY auto_increment
,date_start DATE
,date_stop DATE
,account_currency VARCHAR (64)
,account_name VARCHAR (64)
,ad_id VARCHAR (64)
,ad_name VARCHAR (64)
,adset_id VARCHAR (64)
,adset_name VARCHAR (64)
,campaign_id VARCHAR (64)
,campaign_name VARCHAR (64)
,clicks VARCHAR (64)
,ctr VARCHAR (64)
,impressions VARCHAR (64)
,spend VARCHAR (64)
,total_action_value VARCHAR (64)
);

create TABLE PayMentDay
(id int PRIMARY KEY auto_increment
,dateID DATE
,cId VARCHAR (64)
,gId VARCHAR (64)
,sId VARCHAR (64)
,newAddNum INT
,newAddPayPlayerNum INT
,newAddPayAllMoney FLOAT
,newAddPlayerARPPU FLOAT
,newAddPayPlayerARPPU FLOAT
,newPayPlayerNum INT
,newPayAllMoney FLOAT
,averageNewPayMoney FLOAT
,activeNum INT
,payPlayerNum INT
,todayAllPayMoney FLOAT
,activeARPPU INT
,payPlayerARPPU FLOAT
,allMoney FLOAT
);
--
create TABLE PayMentWeek
(id int PRIMARY KEY auto_increment
,dateID DATE
,cId VARCHAR (64)
,gId VARCHAR (64)
,sId VARCHAR (64)
,newAddNum INT
,newAddPayPlayerNum INT
,newAddPayAllMoney FLOAT
,newAddPlayerARPPU FLOAT
,newAddPayPlayerARPPU FLOAT
,newPayPlayerNum INT
,newPayAllMoney FLOAT
,averageNewPayMoney FLOAT
,activeNum INT
,payPlayerNum INT
,todayAllPayMoney FLOAT
,activeARPPU INT
,payPlayerARPPU FLOAT
,allMoney FLOAT
);

create TABLE PayMentMon
(id int PRIMARY KEY auto_increment
,dateID DATE
,cId VARCHAR (64)
,gId VARCHAR (64)
,sId VARCHAR (64)
,newAddNum INT
,newAddPayPlayerNum INT
,newAddPayAllMoney FLOAT
,newAddPlayerARPPU FLOAT
,newAddPayPlayerARPPU FLOAT
,newPayPlayerNum INT
,newPayAllMoney FLOAT
,averageNewPayMoney FLOAT
,activeNum INT
,payPlayerNum INT
,todayAllPayMoney FLOAT
,activeARPPU INT
,payPlayerARPPU FLOAT
,allMoney FLOAT
);


create table NewAddDay
(id int PRIMARY KEY auto_increment
,dateID DATE
,cID VARCHAR (64)
,gID VARCHAR (64)
,sID VARCHAR (64)
,newAddNum INT
,activeNum INT
,loginCount INT
,averageLogin FLOAT
,allPlayerNum INT
);


create table NewAddWeek
(id int PRIMARY KEY auto_increment
,dateID DATE
,cID VARCHAR (64)
,gID VARCHAR (64)
,sID VARCHAR (64)
,newAddNum INT
,activeNum INT
,loginCount INT
,averageLogin FLOAT
,allPlayerNum INT
);


create table NewAddMon
(id int PRIMARY KEY auto_increment
,dateID DATE
,cID VARCHAR (64)
,gID VARCHAR (64)
,sID VARCHAR (64)
,newAddNum INT
,activeNum INT
,loginCount INT
,averageLogin FLOAT
,allPlayerNum INT
);

create table StayDay
(id int PRIMARY KEY auto_increment
,dateID DATE
,cID VARCHAR (64)
,gID VARCHAR (64)
,sID VARCHAR (64)
,newAddNum INT
,stayList VARCHAR (220)
);

create table StayWeek
(id int PRIMARY KEY auto_increment
,dateID DATE
,cID VARCHAR (64)
,gID VARCHAR (64)
,sID VARCHAR (64)
,newAddNum INT
,stayList VARCHAR (128)
);

create table StayMon
(id int PRIMARY KEY auto_increment
,dateID DATE
,cID VARCHAR (64)
,gID VARCHAR (64)
,sID VARCHAR (64)
,newAddNum INT
,stayList VARCHAR (64)
);


create table StayPayDay
(id int PRIMARY KEY auto_increment
,dateID DATE
,cID VARCHAR (64)
,gID VARCHAR (64)
,sID VARCHAR (64)
,newAddNum INT
,stayList VARCHAR (220)
);

create table StayPayWeek
(id int PRIMARY KEY auto_increment
,dateID DATE
,cID VARCHAR (64)
,gID VARCHAR (64)
,sID VARCHAR (64)
,newAddNum INT
,stayList VARCHAR (128)
);

create table StayPayMon
(id int PRIMARY KEY auto_increment
,dateID DATE
,cID VARCHAR (64)
,gID VARCHAR (64)
,sID VARCHAR (64)
,newAddNum INT
,stayList VARCHAR (64)
);


create table channellist
(id int PRIMARY KEY auto_increment
,name VARCHAR (64)
,fathername VARCHAR (64)
);

create table gamelist
(id int PRIMARY KEY auto_increment
,name VARCHAR (64)
);

create table serverlist
(id int PRIMARY KEY auto_increment
,name VARCHAR (64)
);

--INSERT
insert into channellist (name) value('aaaaaa');
insert into channellist (name) value('bbbbbb');
insert into channellist (name) value('cccccc');



insert into gamelist (name) value('game1');
insert into gamelist (name) value('game2');
insert into gamelist (name) value('game3');


insert into serverlist (name) value('s1');
insert into serverlist (name) value('s2');
insert into serverlist (name) value('s3');

