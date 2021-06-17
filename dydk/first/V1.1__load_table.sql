CREATE DATABASE  DYDK_K1;
USE DATABASE DYDK_K1;
CREATE SCHEMA  KRISH;
USE SCHEMA KRISH;
create or replace  TABLE dyd_k_2 (
    ID STRING,
    ASSET_ID STRING,
    METRIC_ID STRING,
    VALUE NUMBER(18,9),
   CREATED INT ,
  ENDED INT
);
--export SNOWFLAKE_PASSWORD = 'Asuccess34@'
--schemachange  -f '/home/cuelogic.local/krishna.agarawal/PycharmProjects/snow_change' -a 'dwa31784.us-east-1' -u 'akrishna34' -r 'ACCOUNTADMIN' -w 'compute_wh'  -d 'METADATA' -c 'METADATA.SCHEMACHANGE.CHANGE_HISTORY'
--schemachange  -f '/home/cuelogic.local/krishna.agarawal/PycharmProjects/snow_change' -a 'dwa31784.us-east-1' -u 'akrishna34' -r 'ACCOUNTADMIN' -w 'compute_wh'  -d 'METADATA' --create-change-history-table