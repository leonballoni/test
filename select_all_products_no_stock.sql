SELECT *
    FROM products
    WHERE products.product_id NOT IN (
        SELECT stocks.product_id
            FROM stocks
        )