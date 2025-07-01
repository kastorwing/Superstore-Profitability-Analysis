-- Analyzes sales, profit, and GPM by segment, category, and sub-category.
SELECT
    Segment,
    Category,
    Sub_Category,
    SUM(Sales) as Total_Sales,
    SUM(Profit) AS Total_Profits,
    CASE WHEN Sum(Sales) = 0 THEN 0.0 ELSE sum(Profit) / sum(Sales) END AS gross_Profit_Margin
FROM
    `mythical-style-458216-b2.Portfolio_Super_Store.superstore_cleaned_data`
GROUP BY
    Segment,
    Category,
    Sub_Category
ORDER BY
    Segment,
    Total_Sales DESC;