-- Shows year-wise sales, profit, and GPM for each sub-category.
SELECT
    Order_Year,
    Sub_Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    CASE WHEN SUM(Sales) = 0 THEN 0.0 ELSE ROUND(SUM(Profit)/SUM(Sales), 2) END AS Gross_Profit_Margin
FROM
    `mythical-style-458216-b2.Portfolio_Super_Store.superstore_cleaned_data`
GROUP BY
    Order_Year,
    Sub_Category
ORDER BY
    Sub_Category;