-- 6. Anomalies Detection (Transactions with High Discounts)
SELECT *
FROM sales_data
WHERE DiscountPercent > 50
ORDER BY DiscountPercent DESC;
