{{
  config(
    materialized = "table",
    labels = {'contains_pii': ''}
  )
}}

SELECT *
FROM {{ source('customer_raw_zone','customers_data') }} 
where dt>='2022-01-02'