use role accountadmin;
create or replace database azure_db;
create or replace role azure_dbt_role;
create or replace warehouse azure_wh with warehouse_size = 'x-small';
grant usage on warehouse azure_wh to role azure_dbt_role;
grant all on database azure_db to role azure_dbt_role;
grant role azure_dbt_role to user redpanda1snowflake;
use role azure_dbt_role;
create or replace schema azure_schema;

show integrations;

create or replace stage azure_stage
storage_integration = azure_int
url = 'azure://redpanda1snowflake.blob.core.windows.net/redpanda-blob-1'
file_format = (type = csv field_delimiter = ',' skip_header = 1);

list @azure_stage;
show grants on warehouse azure_wh;

show warehouses;
alter warehouse azure_wh suspend;