#Sales Performance
SELECT Salesperson, 
FORMAT(SUM(sl.Sales),0) AS sum_sales
FROM salesperson sp
JOIN sales sl
ON sp.EmployeeKey = sl.EmployeeKey
GROUP BY sp.EmployeeKey
ORDER BY SUM(sl.Sales) DESC;
