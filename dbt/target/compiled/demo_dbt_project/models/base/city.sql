

SELECT city,state,
  count(*) as customers_per_city
FROM `pe2024`.`customer_raw_zone`.`customers_data` 
where dt<='2022-05-02'
group by city, state