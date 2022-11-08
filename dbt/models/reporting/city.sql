{{
  config(
    materialized = "table",
    labels = {'contains_pii': ''}
  )
}}

SELECT city,state,
  count(*) as customers_per_city
FROM {{ source('customer_curated_zone','customers_data') }} 
where dt<='2022-05-02'
group by city, state