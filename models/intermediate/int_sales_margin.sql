select
    date_date,
    products_id,
    orders_id,
    revenue,
    quantity,
    purchase_price,
    ROUND (p.purchase_price*s.quantity,2) as purchase_cost,
    ROUND (s.revenue-s.quantity*p.purchase_price,2) as margin
FROM {{ref('stg_raw__sales')}} as s
LEFT JOIN {{ref('stg_raw__product')}} as p
        USING (products_id)


