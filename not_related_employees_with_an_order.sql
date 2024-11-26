SELECT *
    FROM staffs
    LEFT JOIN orders ON staffs.staff_id = orders.staff_id
    WHERE orders.staff_id IS NULL ;