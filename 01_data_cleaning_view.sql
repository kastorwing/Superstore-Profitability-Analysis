
-- Creates a cleaned view with derived date/profit metrics.
CREATE OR REPLACE VIEW `mythical-style-458216-b2.Portfolio_Super_Store.superstore_cleaned_data` AS
WITH CleanedBase AS (
    SELECT
        `Row ID`,
        TRIM(`Order ID`) AS Order_ID,
        CAST(`Order Date` AS DATE) AS Order_Date,
        CAST(`Ship Date` AS DATE) AS Ship_Date,
        TRIM(`Ship Mode`) AS Ship_Mode,
        TRIM(`Customer ID`) AS Customer_ID,
        TRIM(`Customer Name`) AS Customer_Name,
        TRIM(Segment) AS Segment,
        TRIM(City) AS City,
        TRIM(State) AS State,
        TRIM(Country) AS Country,
        `Postal Code`,
        TRIM(Market) AS Market,
        TRIM(Region) AS Region,
        TRIM(`Product ID`) AS Product_ID,
        TRIM(Category) AS Category,
        TRIM(`Sub-Category`) AS Sub_Category,
        TRIM(`Product Name`) AS Product_Name,
        CAST(Sales AS NUMERIC) AS Sales,
        CAST(Quantity AS INT64) AS Quantity,
        CAST(Discount AS NUMERIC) AS Discount,
        CAST(Profit AS NUMERIC) AS Profit,
        CAST(`Shipping Cost` AS NUMERIC) AS Shipping_Cost,
        TRIM(`Order Priority`) AS Order_Priority
    FROM
        `mythical-style-458216-b2.Portfolio_Super_Store.global_super_store`
)
SELECT
    *,
    EXTRACT(YEAR FROM Order_Date) AS Order_Year,
    EXTRACT(QUARTER FROM Order_Date) AS Order_Quarter,
    FORMAT_DATE('%B', Order_Date) AS Order_Month_Name,
    EXTRACT(MONTH FROM Order_Date) AS Order_Month_Number,
    FORMAT_DATE('%A', Order_Date) AS Order_Weekday_Name,
    DATE_DIFF(Ship_Date, Order_Date, DAY) AS Shipping_Days,
    CASE WHEN Sales = 0 THEN 0.0 ELSE Profit / Sales END AS Gross_Profit_Margin,
    CASE WHEN Quantity = 0 THEN 0.0 ELSE Sales / Quantity END AS Unit_Price
FROM
    CleanedBase;