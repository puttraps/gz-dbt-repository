select
    o.date_date,
    o.orders_id,
    o.revenue,
    o.quantity,
    o.purchase_cost,
    sh.shipping_fee,
    sh.logcost,
    o.margin,
    ROUND (o.margin + sh.shipping_fee - (o.logcost - sh.ship_cost),2) as operational_margin,
    sh.ship_cost
FROM {{ref("int_orders_margin")}} as o
LEFT JOIN {{ref("stg_raw__ship")}} as sh
    USING (orders_id)



