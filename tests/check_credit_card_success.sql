select *
from {{ref("stg_stripe_payment")}}
where payment_method = 'credit_card'
and payment_status<>'success'
and amount > 2000