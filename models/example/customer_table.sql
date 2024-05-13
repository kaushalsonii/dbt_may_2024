with customer_table as (select id , concat (FIRST_NAME, " ", LAST_NAME) as full_name from `tenacious-camp-357012.jaffle_shop.customers`)

select * from customer_table