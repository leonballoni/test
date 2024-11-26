SELECT *
    FROM products
    WHERE products.product_id NOT IN (
        SELECT order_items.product_id
            FROM order_items
        )w