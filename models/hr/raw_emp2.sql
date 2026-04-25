--{{config(materialized='table',transient='false')}}
{{config(materialized='incremental',
incremental_strategy='delete+insert',
unique_key='empid',
transient='false')}}
select * from dbt_database.dbt_schema.raw_employee