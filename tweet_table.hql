create database if not exists tweetsdb;
use tweetsdb;
create external table if not exists tweet (
  Unnamed_0 int,
  id int,
  conversation_id int,
  `date` string,
  time string,
  user_id int,
  username string,
  tweet string
)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile location 'hdfs://namenode:8020/user/hive/warehouse/tweetsdb.db/tweet';