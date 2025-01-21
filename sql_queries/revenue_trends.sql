-- 1. Overall Revenue Trend (Daily Sales)
SELECT 
    DATE(TransactionDate) AS TransactionDay, 
    SUM(TransactionAmount) AS TotalRevenue
FROM sales_data
GROUP BY TransactionDay
ORDER BY TransactionDay;
