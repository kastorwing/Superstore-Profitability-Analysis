-- Breaks down sales, profit, and GPM by year, quarter, and month.
SELECT
    Order_Year,
    Order_Quarter,
    Order_Month_Number,
    Order_Month_Name,
    SUM(Sales) AS Monthly_Quarterly_Sales,
    SUM(Profit) AS Monthly_Quarterly_Profit,
    CASE WHEN SUM(Sales) = 0 THEN 0.0 ELSE SUM(Profit) / SUM(Sales) END AS Monthly_Quarterly_Gross_Profit_Margin
FROM
    `mythical-style-458216-b2.Portfolio_Super_Store.superstore_cleaned_data`
GROUP BY
    Order_Year,
    Order_Quarter,
    Order_Month_Number,
    Order_Month_Name
ORDER BY
    Order_Year,
    Order_Quarter,
    Order_Month_Number;