-- Calculates total profit, unique customers, and average profit per customer.
SELECT
    SUM(Profit) AS Profit,
    COUNT(DISTINCT Customer_ID) AS Customers,
    SUM(Profit) / COUNT(DISTINCT Customer_ID) AS average_profit_per_customer
FROM
    `mythical-style-458216-b2.Portfolio_Super_Store.superstore_cleaned_data`;