SELECT p.product_name,s.year,s.price
FROM Sales AS s
LEFT JOIN 
Product AS p
ON
p.Product_id = s.product_id