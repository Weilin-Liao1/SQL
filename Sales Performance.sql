#Sales Performance
SELECT 
salesperson, SUM(sl.Sales)AS sum_sales
FROM salesperson sp
JOIN sales sl
ON sp.EmployeeKey = sl.EmployeeKey
GROUP BY sp.EmployeeKey
ORDER BY SUM(sl.Sales)DESC;
