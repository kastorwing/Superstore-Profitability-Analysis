-- Analyzes sales and profit for Nigeria and Dominican Republic.
SELECT
    Country,
    Order_Year,
    Category,
    Sub_Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    AVG(Discount) AS Average_Discount,
    SUM(Quantity) AS Total_Quantity_Sold
FROM
    `mythical-style-458216-b2.Portfolio_Super_Store.superstore_cleaned_data`
WHERE
    Country IN ('Nigeria', 'Dominican Republic')
GROUP BY
    Country,
    Order_Year,
    Category,
    Sub_Category
ORDER BY
    Country,
    Order_Year,
    Total_Profit ASC;