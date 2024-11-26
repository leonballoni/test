SELECT
        stores.store_name,
        brand.brand_name,
        sum(order_items.quantity) as quantity_sold_by_store_brand
    FROM orders
--         INNER é util para retornar APENAS o que tem alguma referência
--         e ignorar qualquer item que não tenha relacionamento definido
    INNER JOIN order_items
        ON order_items.order_id = orders.order_id
    INNER JOIN stores
        ON stores.store_id = orders.store_id
    INNER JOIN products
        ON order_items.product_id = products.product_id
    INNER JOIN brands
        ON brands.brand_id = products.brand_id
    GROUP BY
        stores.store_name, brand.brand_name
