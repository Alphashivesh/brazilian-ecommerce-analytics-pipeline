SELECT 
    o.order_id,
    o.order_purchase_timestamp,
    c.customer_city,
    c.customer_state,
    i.price AS product_price,
    i.freight_value AS shipping_cost,
    p.product_category_name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items i ON o.order_id = i.order_id
JOIN products p ON i.product_id = p.product_id
WHERE o.order_status != 'canceled'
LIMIT 5000;