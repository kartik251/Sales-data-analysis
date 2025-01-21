Drill-down: Top Selling Products per Region
SELECT 
    Region, 
    ProductName, 
    SUM(TransactionAmount) AS TotalRevenue
FROM sales_data
GROUP BY Region, ProductName
ORDER BY Region, TotalRevenue DESC;
