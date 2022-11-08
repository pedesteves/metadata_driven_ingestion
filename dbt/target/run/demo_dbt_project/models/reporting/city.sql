
  
    

    create or replace table `pe2024`.`customer_reporting_zone`.`city`
    
    
    OPTIONS(
      description="""Analysing customers per city""",
    
      labels=[('contains_pii', '')]
    )
    as (
      

SELECT city,state,
  count(*) as customers_per_city
FROM `pe2024`.`customer_curated_zone`.`customers_data` 
where dt<='2022-05-02'
group by city, state
    );
  