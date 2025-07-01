-- Investigates profitability of 'Furniture - Tables' by year and country.
SELECT
    Order_Year,
    Country,
    SUM(Sales) AS Total_Sales_Tables,
    SUM(Profit) AS Total_Profit_Tables,
    AVG(Discount) AS Average_Discount_Tables,
    COUNT(DISTINCT Order_ID) AS Number_of_Orders_Tables
FROM
    `mythical-style-458216-b2.Portfolio_Super_Store.superstore_cleaned_data`
WHERE
    Category = 'Furniture' AND Sub_Category = 'Tables'
GROUP BY
    Order_Year,
    Country
ORDER BY
    Order_Year,
    Total_Sales_Tables DESC;