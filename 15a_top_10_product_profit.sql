-- Finds the top 10 most profitable individual products by total profit, including their category and sub-category.
SELECT
    Category,
    Sub_Category,
    Product_Name,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Profit) / SUM(Sales) AS Overall_Gross_Profit_Margin
FROM
    `mythical-style-458216-b2.Portfolio_Super_Store.superstore_cleaned_data`
GROUP BY
    Category,
    Sub_Category,
    Product_Name
ORDER BY
    Total_Profit DESC
LIMIT 10;