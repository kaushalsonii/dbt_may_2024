with c as (select * from `tenacious-camp-357012.jaffle_shop.customers`),
o as (select * from `tenacious-camp-357012.jaffle_shop.orders`),
p as (select * from `tenacious-camp-357012.stripe.payments`)

select c.ID, 
concat(FIRST_NAME," ",LAST_NAME) as full_name,
o.USER_ID as user_id,
o.ORDER_DATE as order_date,
o.STATUS as order_status,
p.orderid payment_order_id,
p.paymentmethod as payment_method,
p.status as payment_status,
p.amount,
p.created
 from c 
left join o on c.ID = o.ID
left join p on o.ID = p.ID



