select status, count(id) as n_ordens from dbt-tutorial.jaffle_shop.orders
group by status
order by n_ordens desc