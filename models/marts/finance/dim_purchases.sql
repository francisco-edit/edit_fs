select o.order_id, o.customer_id, sum(p.amount) as total_amount
from {{ref('stg_stripe_payment')}} p
inner join {{ref('stg_jaffle_shop_orders')}} o
on p.order_id = o.order_id
where p.payment_status = 'success'
group by o.order_id, o.customer_id