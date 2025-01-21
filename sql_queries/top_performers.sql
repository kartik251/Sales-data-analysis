-- 2. Revenue by Product Category
SELECT 
    ProductName, 
    SUM(TransactionAmount) AS TotalRevenue
FROM sales_data
GROUP BY ProductName
ORDER BY TotalRevenue DESC
LIMIT 10;

-- 3. Top Performing Regions by Revenue
SELECT 
    Region, 
    SUM(TransactionAmount) AS TotalRevenue
FROM sales_data
GROUP BY Region
ORDER BY TotalRevenue DESC;

-- 4. Identifying Seasonal Patterns (Monthly Sales Trend)
SELECT 
    DATE_TRUNC('month', TransactionDate) AS Month,
    SUM(TransactionAmount) AS TotalRevenue
FROM sales_data
GROUP BY Month
ORDER BY Month;

-- 5. High-Value Customers (Top 10 Customers by Revenue)
SELECT 
    CustomerID, 
    SUM(TransactionAmount) AS TotalSpent
FROM sales_data
GROUP BY CustomerID
ORDER BY TotalSpent DESC
LIMIT 10;
