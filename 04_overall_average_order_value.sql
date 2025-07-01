-- Calculates the average value of all orders.
SELECT
    SUM(Sales) / COUNT(DISTINCT Order_ID) AS Overall_Average_Order_Value
FROM
    `mythical-style-458216-b2.Portfolio_Super_Store.superstore_cleaned_data`;