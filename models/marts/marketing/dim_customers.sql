select 
c.customer_id,
c.first_name,
c.last_name,
min(o.order_date) as first_order_date,
max(o.order_date) as most_recent_order_date,
count(o.order_id) as number_of_orders,
sum(p.amount) as lifetime_value
from {{ref('stg_jaffle_shop_clientes')}} c, {{ref('stg_jaffle_shop_orders')}} o, {{ref('stg_stripe_payment')}} p
where c.customer_id = o.customer_id
and p.order_id = o.order_id
and p.payment_status = "success"
group by c.customer_id,
c.first_name,
c.last_name