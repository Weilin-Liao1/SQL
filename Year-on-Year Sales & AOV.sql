#Year-on-Year Sales and AOV (comparing sales and AOV over consecutive years)

SELECT 
YEAR(converted_date) AS year,
FORMAT(SUM(Sales),0) AS sum_sales,
COUNT(*) AS orders_count,
FORMAT(SUM(Sales)/COUNT(*),2) AS AOV
FROM (
    SELECT 
    STR_TO_DATE(OrderDate, '%W, %M %d, %Y') AS converted_date,
    Sales
    FROM sales 
) AS converted_data

GROUP BY YEAR(converted_date)
ORDER BY YEAR(converted_date);
