-- Analyzes sales and profit trends year-over-year with growth rates.
WITH YearlySummary AS (
    SELECT
        Order_Year,
        SUM(Sales) AS Yearly_Sales,
        SUM(Profit) AS Yearly_Profit,
        (SUM(Profit) / SUM(Sales)) AS Yearly_Gross_Profit_Margin
    FROM
        `mythical-style-458216-b2.Portfolio_Super_Store.superstore_cleaned_data`
    GROUP BY
        Order_Year
    ORDER BY
        Order_Year
)
SELECT
    Order_Year,
    Yearly_Sales,
    Yearly_Profit,
    Yearly_Gross_Profit_Margin,
    LAG(Yearly_Sales, 1) OVER (ORDER BY Order_Year) AS Previous_Year_Sales,
    (Yearly_Sales - LAG(Yearly_Sales, 1) OVER (ORDER BY Order_Year)) / LAG(Yearly_Sales, 1) OVER (ORDER BY Order_Year) AS YOY_Sales_Growth,
    LAG(Yearly_Profit, 1) OVER (ORDER BY Order_Year) AS Previous_Year_Profit,
    (Yearly_Profit - LAG(Yearly_Profit, 1) OVER (ORDER BY Order_Year)) / LAG(Yearly_Profit, 1) OVER (ORDER BY Order_Year) AS YOY_Profit_Growth
FROM
    YearlySummary
ORDER BY
    Order_Year;