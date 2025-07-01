-- Purpose: Calculate average discount, number of unique sales (orders), and total profit
-- for each product sub-category, broken down by region and year.
-- This data will be used to analyze the relationship between discounts, sales volume, and profitability.

SELECT
    Region,
    Sub_Category,
    Order_Year,
    AVG(Discount) AS Average_Discount,
    COUNT(DISTINCT Order_ID) AS Number_of_Unique_Sales,
    SUM(Sales) AS Total_Sales_Value, -- Adding total sales value for a more complete picture of volume
    SUM(Profit) AS Total_Profit
FROM
    `mythical-style-458216-b2.Portfolio_Super_Store.superstore_cleaned_data`
GROUP BY
    Region,
    Sub_Category,
    Order_Year
ORDER BY
    Sub_Category,
    Region,
    Order_Year;