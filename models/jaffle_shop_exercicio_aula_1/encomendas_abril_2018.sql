select count(USER_ID) as n_clientes from dbt-tutorial.jaffle_shop.orders
where EXTRACT(YEAR FROM ORDER_DATE) = 2018
and EXTRACT(MONTH FROM ORDER_DATE) = 04