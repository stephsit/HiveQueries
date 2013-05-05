CREATE EXTERNAL TABLE page_view(viewTime INT, userid BIGINT, 
     page_url STRING, referrer_url STRING, 
     ip STRING COMMENT 'IP Address of the User', 
     country STRING COMMENT 'country of origination') 
 COMMENT 'This is the staging page view table' 
 ROW FORMAT DELIMITED FIELDS TERMINATED BY '\054' LINES TERMINATED BY '\012' 
 STORED AS TEXTFILE 
 LOCATION '<hdfs_location>';