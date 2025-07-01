-- Breaks down sales, profit, and GPM by product category and sub-category.
SELECT
    Category,
    Sub_Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    CASE WHEN SUM(Sales) = 0 THEN 0.0 ELSE SUM(Profit) / SUM(Sales) END AS Gross_Profit_Margin
FROM
    `mythical-style-458216-b2.Portfolio_Super_Store.superstore_cleaned_data`
GROUP BY
    Category,
    Sub_Category
ORDER BY
    Category,
    Total_Sales DESC;