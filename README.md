# Superstore Profitability Analysis Portfolio

## Project Overview

This portfolio project leverages the comprehensive Superstore dataset to conduct an in-depth analysis of sales performance, profit drivers, and customer behavior. The primary goal is to **diagnose areas of profit erosion, identify strategic opportunities, and provide data-driven, actionable recommendations** to enhance overall business profitability. This analysis aims to move beyond surface-level observations to uncover the underlying mechanisms impacting financial health.

## Data Source & Tools

* **Data Source:** Superstore Dataset (a simulated retail dataset commonly used for business intelligence analysis).
* **Tools Used:**
    * **SQL (Google BigQuery):** For data cleaning, transformation, feature engineering, and extracting key aggregated insights.
    * **Tableau Public:** For interactive data visualization, dashboard creation, and presenting complex findings in an accessible format.
    * **GitHub Pages:** To host the interactive Tableau dashboards and project documentation as a live web portfolio.

## Methodology & Approach

The project followed a structured analytical approach:

1.  **Data Preparation (SQL):** The raw Superstore dataset was first processed using SQL queries in Google BigQuery. This involved:
    * **Cleaning:** Standardizing text fields (e.g., `Order ID`, `Customer Name`), and casting data types appropriately.
    * **Feature Engineering:** Creating new, insightful dimensions and measures such as `Order_Year`, `Order_Quarter`, `Order_Month_Name`, `Shipping_Days`, `Gross_Profit_Margin` (at a row level), and `Unit_Price`. This foundational `superstore_cleaned_data` view served as the single source of truth for all subsequent analyses.
2.  **Exploratory Data Analysis & Insight Generation (SQL & Tableau):** A series of targeted SQL queries were executed to extract key performance metrics and aggregated insights. These insights were then visually explored and validated using Tableau, leading to the identification of critical trends and anomalies.
3.  **Interactive Dashboard Development (Tableau):** Four distinct, interactive dashboards were designed in Tableau Public, each focusing on a specific aspect of the business to present the findings clearly and allow for dynamic exploration. Special attention was paid to creating insightful visualizations, including a custom heatmap to diagnose "leaky transactions."
4.  **Actionable Recommendations:** Based on the consolidated insights from both SQL analysis and Tableau visualizations, a set of strategic, actionable recommendations was developed to address identified challenges and capitalize on opportunities.

## Key Performance Metrics (2011-2014)

A foundational understanding of Superstore's performance is established through these key metrics:

* **Total Sales:** $12,642,501.91
* **Total Profit:** $1,467,457.29
* **Overall Gross Profit Margin:** 12%
* **Overall Average Order Value (AOV):** $504.99
* **Average Lifetime Profit Per Customer (Approximated CLTV):** $922.93
* **Segment Sales Contribution:** The Consumer segment generates the most sales, followed by Corporate, with Home Office sales contributing less than half of Corporate.

## Key Analytical Insights

The comprehensive analysis revealed several critical observations and trends impacting Superstore's profitability:

### Overall Financial Trends
Despite a remarkable near 100% increase in sales over four years, the overall profit margin has remained relatively stable (within 1% variation). This indicates that while profit growth has largely kept pace with sales, it also suggests potential areas for efficiency gains and margin optimization if benchmarked against industry standards.

### Critical Underperforming Sub-Categories (Driven by Discounts)
* **Tables** are identified as major loss leaders across all customer segments and in all years, with their negative profit margin worsening significantly (e.g., from -5.1% in 2012 to -12.5% in 2014). This unprofitability is overwhelmingly driven by excessively high discounts (often 70-80%) applied to specific products like "Lesro Training Table," "Bevis Computer Table," and "Chromcraft Bull-Nose Wood Oval Conference Tables."
* **Machines** consistently exhibit low-profit margins, signaling potential operational or pricing inefficiencies. While some machine types are profitable, others such as "Cubify CubeX 3D Printer Double Head Print" and "Lexmark MX611dhe Monochrome Laser Printer" are significant loss-makers, frequently due to the application of high discounts.

### Profit Margin Erosion in Growing Sub-Categories (Due to Inconsistent Transactional Profitability)
* Categories like **Chairs, Phones, Binders, Accessories, Labels, Envelopes, Fasteners, Supplies, and Storage** are experiencing healthy sales growth. However, a concerning trend is their declining profit margins year-over-year.
* Crucially, for categories such as **Binders and Appliances**, despite being net profitable overall (showing a positive `SUM(Profit)`), their average of row-level `Gross_Profit_Margin` is negative. This discrepancy is directly attributable to a substantial number of individual transactions being highly unprofitable (e.g., -50% to -200% margins). This "leaky" behavior is primarily caused by extreme discounts (70-80%) applied to multiple units within a single order. Specific binder products like "GBC DocuBind P400 Electric Binding System" and "Ibico EPK-21 Electric Binding System" frequently appear among these high-loss individual sales, indicating that increased volume is not consistently translating into proportional profit.

### High-Performing Sub-Categories
* **Paper** stands out as exceptionally efficient and highly profitable, demonstrating strong sales and profit growth with consistently high margins.
* **Copiers** ("Canon imageCLASS 2200 Advanced Copier") and **Phones** ("Cisco Smart Phone, Full Size," "Motorola Smart Phone, Full Size") are the primary profit drivers within the Technology category, with Copiers becoming even more profitable over time.
* **Bookcases** ("Sauder Classic Bookcase") and **Chairs** ("Harbour Creations Executive Leather Armchair") also contribute significant sales volume and consistent positive profit.
* **Appliances** (e.g., "Hoover Stove, Red") show strong profitability as well.

### Geographic Profit Drain (Exacerbated by Discounts)
* Specific geographic areas, notably the **Dominican Republic, Nigeria, Zimbabwe, and Uganda**, are identified as consistent loss leaders. This unprofitability is primarily due to the application of large discounts that exceed the inherent margin. Furthermore, many of the highly unprofitable individual "Binder" sales (e.g., "GBC Ibimaster 500 Manual ProClick Binding System") originate from the **United States Central and South regions**, and some also from countries like Nigeria and Sweden, confirming the widespread issue of discount misuse across diverse geographies.

### Category-Level Profitability
At a higher level, **Furniture** generally has a much lower profit margin compared to other categories, largely influenced by the severe losses in the Tables sub-category. **Office Supplies** (excluding problematic items like Tables and Machines) shows strong overall profit margins despite not having the highest sales volume. **Technology** is above average in profitability but faces internal margin erosion challenges, particularly with certain Phone products.

### Seasonal Sales Patterns
Sales and profit consistently peak in **Q4 (October-December)**, with a noticeable dip in Q1, highlighting a clear and exploitable seasonal pattern for future planning.

## Interactive Tableau Dashboards

This project features four interactive Tableau dashboards, each designed to provide specific insights into Superstore's performance and profitability. Click on each link to explore the live dashboards on Tableau Public:

* **[Dashboard 1: Executive Overview & Business Health](link_to_your_dashboard1.html)**
    * This dashboard provides a high-level overview of key performance indicators and overall business trends, offering a quick assessment of Superstore's financial health.
* **[Dashboard 2: Discount Impact & Transactional Loss](link_to_your_dashboard2.html)**
    * This dashboard offers granular evidence of how excessive discounts directly cause losses and erode profit margins at the individual transaction level, highlighting "leaky" sales.
* **[Dashboard 3: Geographic Performance & Profitability](link_to_your_dashboard3.html)**
    * This dashboard pinpoints where the business is winning or losing geographically, and illustrates how profitability and discount usage vary across different regions and countries.
* **[Dashboard 4: Strategic Opportunities & Overall Trends](link_to_your_dashboard4.html)**
    * This dashboard provides insights into the overall product portfolio health, showcases top-performing products and sub-categories, and reveals important seasonal sales and profit patterns for strategic planning.

## SQL Queries

The analytical insights presented in this project are derived from a series of SQL queries designed to extract, transform, and aggregate data from the raw Superstore dataset. These queries were executed in a Google BigQuery environment (`mythical-style-458216-b2.Portfolio_Super_Store`). The `superstore_cleaned_data` view serves as the foundational dataset for all subsequent analyses and Tableau visualizations.

The `sql_queries/` directory in this repository contains the following key queries:

* **`superstore_cleaned_data.sql`**: This foundational query creates a cleaned and enhanced view of the raw Superstore data, standardizing fields, casting data types, and engineering new features like `Order_Year`, `Shipping_Days`, and `Gross_Profit_Margin`.
* **`overall_business_performance_summary.sql`**: Summarizes total sales, profit, and overall gross profit margin.
* **`customer_profitability_metrics.sql`**: Calculates total profit, unique customers, and average profit per customer.
* **`average_order_value_calculation.sql`**: Determines the overall average value of all orders.
* **`annual_sales_profit_trend_analysis.sql`**: Analyzes sales and profit trends year-over-year with growth rates.
* **`seasonal_sales_profit_breakdown.sql`**: Aggregates sales, profit, and gross profit margin by year, quarter, and month to identify seasonal patterns.
* **`performance_by_customer_segment.sql`**: Breaks down sales, profit, and gross profit margin by customer segment.
* **`performance_by_shipping_mode.sql`**: Evaluates sales, profit, and gross profit margin across different shipping modes.
* **`product_category_sub_category_analysis.sql`**: Provides detailed breakdown of sales, profit, and gross profit margin by product category and sub-category.
* **`segment_category_sub_category_deep_dive.sql`**: Further segments performance by customer segment, product category, and sub-category.
* **`year_over_year_sub_category_performance.sql`**: Shows annual sales, profit, and gross profit margin for each sub-category over time.
* **`geographic_performance_by_region_country.sql`**: Analyzes sales, profit, and gross profit margin by geographical region and country.
* **`deep_dive_tables_sub_category.sql`**: Investigates profitability of 'Furniture - Tables' by year and country to diagnose unprofitability.
* **`regional_loss_leaders_analysis.sql`**: Specifically targets sales, profit, average discount, and quantity sold within 'Nigeria' and 'Dominican Republic'.
* **`top_10_most_profitable_products.sql`**: Identifies the ten individual products with the highest total profit.
* **`top_10_least_profitable_products.sql`**: Pinpoints the ten individual products that incurred the largest total losses.
* **`regional_yearly_discount_sales_profit_summary.sql`**: Calculates average discount, unique sales, total sales value, and total profit by region, sub-category, and year.

## Actionable Recommendations

Based on the comprehensive data analysis, the following strategic recommendations are proposed to enhance Superstore's profitability:

### 1. Prioritize Profitability by Implementing Strict Discount Control & Accountability (CRITICAL & FOUNDATIONAL)
* **Recommendation:** Establish and enforce clear, granular discount policies with strict approval hierarchies. The data unequivocally shows that excessive discounts (particularly 70% to 80%) are the single most significant root cause of losses across various products and regions, often amplified when applied to multiple items in a single transaction.
* **Actionable Steps:**
    * **Define Strict Discount Thresholds:** Set maximum permissible discount percentages for each product category, sub-category, and even individual high-value products. Specifically, discounts exceeding 15-20% should trigger immediate scrutiny, and anything above 50% should be almost entirely eliminated or require presidential-level approval due to demonstrated consistent losses.
    * **Tiered Approval Process:** Mandate higher-level management approval for any discounts exceeding defined thresholds.
    * **Regular Audits:** Conduct monthly or quarterly audits of applied discounts, particularly focusing on transactions in loss-making product categories (like Tables, Machines) and regions (Dominican Republic, Nigeria, Zimbabwe, Uganda, and specific problematic US regions like Central and South for products like binding machines). Focus on identifying and rectifying sales where discounts of 0.7 or 0.8 were applied, especially on multiple units.
    * **Sales Team Training & Incentives:** Educate the sales force on the direct, devastating impact of extreme discounts on profit margins. Align sales incentives solely with gross profit dollars, not just top-line sales volume, to discourage unprofitable discounting.

### 2. Strategic Overhaul of Underperforming Product Categories/Sub-Categories
* **Recommendation:** Address the persistent losses and low margins in Tables and Machines, and investigate and rectify margin erosion in other growing categories.
* **Actionable Steps:**
    * **For Tables (Urgent Action):** Given their consistent and severe losses (e.g., "Lesro Training Table" with -95% margin), immediately cease or severely restrict all discounts on Tables, especially those at 0.7 or 0.8. Conduct a deep dive into sourcing, manufacturing, and shipping costs. Re-evaluate base pricing. If profitability cannot be achieved, consider phasing out or significantly reducing stock to prevent further financial drain.
    * **For Machines:** Analyze individual machine types/SKUs that are contributing to losses (e.g., "Cubify CubeX 3D Printer Double Head Print", "Lexmark MX611dhe Monochrome Laser Printer"). Re-negotiate terms with suppliers and explore bundling options. Implement strict discount controls as per Recommendation 1 for these specific products.
    * **For Categories with Eroding Margins (Chairs, Phones, Binders, Accessories, Labels, Envelopes, Fasteners, Supplies, Storage):**
        * Recognize that while these categories might be overall profitable (positive `SUM(Profit)`), the negative average of their row-level gross profit margin confirms significant individual loss-making transactions (driven by high discounts on products like "GBC DocuBind P400 Electric Binding System" within Binders).
        * Conduct detailed margin analysis to pinpoint specific SKUs, excessive promotional periods, or competitive pricing pressure that leads to these highly unprofitable individual sales.
        * Implement dynamic pricing strategies and cross-selling/upselling training to increase overall transaction profitability rather than relying on deep discounts.

### 3. Re-evaluate Strategy for Loss-Leading Geographic Regions
* **Recommendation:** Mitigate losses in Dominican Republic, Nigeria, Zimbabwe, and Uganda, and address specific high-loss pockets within otherwise profitable regions.
* **Actionable Steps:**
    * **Discount Restrictions:** Immediately apply the same stringent discount controls (especially for discounts of 0.7 or 0.8) as recommended for Tables and problematic products in these regions. Data shows these extreme discounts are a primary driver of regional losses.
    * **Local Market Deep Dive:** Investigate specific competitive landscapes, local regulations, and import duties contributing to higher costs or the perceived need for deep discounts.
    * **Adjust Pricing:** Consider raising base prices in these markets to account for higher operational costs if necessary to avoid loss-making sales.
    * **Strategic Assessment:** Determine if continued operation in these markets aligns with long-term strategic goals, or if resources could be reallocated to more profitable areas.

### 4. Capitalize on High-Performing and High-Margin Areas
* **Recommendation:** Lean into successful product categories and sub-categories to drive further profitable growth.
* **Actionable Steps:**
    * **Invest in Paper and Copiers:** These are highly profitable and growing (e.g., "Canon imageCLASS 2200 Advanced Copier" is a top profit driver). Increase marketing budgets, ensure robust inventory, and explore premium product lines. Crucially, avoid aggressive discounting that could erode their strong margins.
    * **Prioritize Office Supplies Category:** As a category, Office Supplies (excluding problematic items) generally offers excellent profit margins. Train sales teams to strategically push customers towards these products.
    * **Amplify Art, Appliances, Bookcases, Chairs:** Continue to monitor and support the growth of these categories (e.g., "Hoover Stove, Red" in Appliances, "Sauder Classic Bookcase" in Bookcases, "Harbour Creations Executive Leather Armchair" in Chairs), ensuring supply chain efficiency and protecting healthy margins.

### 5. Enhance Customer Lifetime Value & Strategic Segment Engagement
* **Recommendation:** Implement targeted programs to improve customer retention and capitalize on varying segment value.
* **Actionable Steps:**
    * **Customer Retention Programs:** Based on the $922.93 average profit per customer, allocate a budget for customer retention initiatives (e.g., loyalty programs, personalized follow-ups, exclusive offers for repeat customers). The goal is to bring customers back and encourage them to reach or exceed this average lifetime profit.
    * **Address Declining Consumer AOV:** Implement strategies to increase the average order value for the Consumer segment (e.g., bundle deals, "buy more, save more" promotions, personalized product recommendations).
    * **Cultivate Home Office Segment:** Given the strong growth in Home Office AOV, develop tailored marketing campaigns and product offerings specifically for this segment to further enhance their value.
