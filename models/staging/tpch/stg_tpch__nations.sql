/*
  stg_tpch__nations.sql
  ────────────────────────
  Staging model for the nations seed table.
*/

with

source as (
    select * from {{ ref('nation_codes') }}
),
renamed as
(
    select 
        NATION_ID as nation_id,
        NATION_NAME as nation_name,
        REGION_KEY as region_key,
        REGION_NAME as region_name,
        COMMENT as comment
    from source
)

select * from renamed