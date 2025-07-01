-- Summarizes total sales, profit, and overall GPM.
SELECT
    ROUND(SUM(Sales), 2) AS `Total Sales`,
    ROUND(SUM(Profit), 2) AS `Total Profit`,
    ROUND((SUM(Profit) / SUM(Sales)), 2) AS Overall_Gross_Profit
FROM
    `mythical-style-458216-b2.Portfolio_Super_Store.superstore_cleaned_data`;