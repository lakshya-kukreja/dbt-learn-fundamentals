SELECT order_id, SUM(amount) AS total_amount
FROM {{ref('stg_jaffle_shop__payment')}}
GROUP BY 1
HAVING SUM(amount) < 0