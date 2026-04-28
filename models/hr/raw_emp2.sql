--{{config(materialized='table',transient='false')}}
{{config(materialized='incremental',
incremental_strategy='append',
unique_key='empid',
transient='false',
on_schema_change='append_new_columns')}}
--select * from dbt_database.dbt_schema.raw_employee
select * 
,sysdate() as reported_date from dbt_database.dbt_schema.raw_employee

--delete+insert =>create a tempoarry table-->delete the data and again reinsert the data
--merge=>create temporary view-->when matched update else insert
--append=>temporary view -->whatever is thee it will papend from source