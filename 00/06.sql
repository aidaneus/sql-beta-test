SELECT
    (SELECT name
     FROM person
     WHERE person_id = id)
        AS name,
    (SELECT (name = 'Denis') as check_name
     FROM person
     WHERE person_id = id)
        AS check_name
FROM person_order
WHERE order_date = '2022-01-07'
       AND (menu_id = 13
         OR menu_id = 14
         OR menu_id = 18)