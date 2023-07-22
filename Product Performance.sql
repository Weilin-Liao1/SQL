#Product Performance (Finding the top-selling product in the 'Bikes' category)
SELECT 
Product, 
FORMAT(SUM(sl.Sales),0) AS sum_sales
FROM product pd
JOIN sales sl
ON pd.ProductKey=sl.ProductKey
WHERE Category = 'Bikes'
GROUP BY Product
ORDER BY  SUM(sl.Sales) DESC
;

