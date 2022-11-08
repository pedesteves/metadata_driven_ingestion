
  
    

    create or replace table `pe2024`.`customer_curated_zone`.`customers_data`
    
    
    OPTIONS(
      description="""""",
    
      labels=[('contains_pii', '')]
    )
    as (
      

SELECT *
FROM `pe2024`.`customer_raw_zone`.`customers_data` 
where dt>='2022-01-02'
    );
  