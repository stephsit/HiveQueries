CREATE TABLE access_log (
  remote_ip STRING,
  request_date STRING,
  method STRING,
  request STRING,
  protocol STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.contrib.serde2.RegexSerDe'
WITH SERDEPROPERTIES  (
"input.regex" = "([^ ]) . . [([^]]+)] \"([^ ]) ([^ ]) ([^ \"])\" *",
"output.format.string" = "%1$s %2$s %3$s %4$s %5$s"
)
STORED AS TEXTFILE;