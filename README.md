# AtliQ Hardware — Finance & Supply Chain Analytics

A SQL-based business analytics project built on a relational database to analyze sales, customers, products, pricing, discounts, manufacturing costs, freight, and sales forecasts for AtliQ Hardware.

The project focuses on translating business questions into SQL queries and using the results to analyze commercial and supply-chain performance.

---

## Business Objectives

The analysis covers:

- Sales performance and trends
- Customer contribution and segmentation
- Product performance
- Market and regional performance
- Pricing and cost analysis
- Discount impact
- Freight costs
- Seasonal sales patterns
- Customer purchase frequency
- Forecast vs. actual sales
- Month-over-month sales growth

---

## Database Structure

The project uses a 9-table relational database consisting of dimension and fact tables.

| Table | Purpose |
|---|---|
| `dim_customer` | Customer, market, region and channel information |
| `dim_product` | Product information and product attributes |
| `fact_forecast_monthly` | Monthly sales forecast quantities |
| `fact_freight_cost` | Freight and transportation cost information |
| `fact_gross_price` | Product gross prices by fiscal year |
| `fact_manufacturing_cost` | Product manufacturing cost information |
| `fact_post_invoice_deductions` | Post-invoice deductions |
| `fact_pre_invoice_deductions` | Pre-invoice discount information |
| `fact_sales_monthly` | Monthly sales transaction data |

---

## Business Analysis

### Sales Analysis

Analyzed monthly sales quantities and revenue across products, customers, markets, and time periods.

### Customer Analysis

Analyzed customer purchasing behavior, customer contribution, purchase frequency, and high-value customers across regions.

### Product Analysis

Compared product performance using sales quantity, revenue, rankings, pricing, and cost information.

### Pricing & Cost Analysis

Compared gross prices with manufacturing costs to evaluate product-level profitability and cost relationships.

### Discount Analysis

Analyzed pre-invoice discount percentages and their relationship with revenue.

### Freight Cost Analysis

Compared freight costs across markets and fiscal years to identify differences in transportation costs.

### Forecast Accuracy

Compared forecasted quantities with actual sales quantities to identify gaps between expected and realized demand.

### Seasonal & Time Analysis

Analyzed monthly sales patterns and month-over-month changes to identify changes in sales performance over time.

---

## SQL Techniques Used

### Core SQL

- SELECT
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- Aggregate Functions
- CASE Statements

### Data Analysis

- INNER JOIN
- Subqueries
- Common Table Expressions (CTEs)
- Conditional Aggregation
- Date Functions
- Fiscal-Year Calculations

### Window Functions

- `RANK()`
- `DENSE_RANK()`
- `LAG()`
- `LEAD()`

Used window functions for product/customer ranking and time-based comparisons such as month-over-month sales analysis.

### Advanced SQL

- `EXISTS`
- Stored Procedures
- User-Defined Functions
- Triggers
- PIVOT

---

## Business Questions

Examples of questions addressed in the project:

- How do sales volumes change over time?
- Which customers contribute most to sales?
- Which products have the highest sales and revenue?
- Which markets show differences in sales performance?
- How do product prices compare with manufacturing costs?
- How do discount levels relate to revenue?
- Which markets have higher freight costs?
- Are there recurring seasonal sales patterns?
- How different are forecasted quantities from actual sales?
- Which products are top sellers within each market?
- What is the month-over-month growth rate for each product?

---

## Project Structure

AtliQ-Hardware-SQL-Analytics/

├── README.md  
├── SQL/  
│   └── atliq_hardware_analysis.sql  
└── Documentation/  
    └── project-documentation.pdf

---

## Tools Used

- SQL Server
- SQL
- Relational Database Concepts
- Business Analytics
- Finance & Supply Chain Analytics

---

## What This Project Demonstrates

This project demonstrates the ability to:

- Work with relational business databases
- Translate business questions into SQL queries
- Combine multiple fact and dimension tables
- Perform customer, product, sales, pricing, and cost analysis
- Apply advanced SQL techniques to business problems
- Use window functions for ranking and time-based comparisons
- Analyze forecast versus actual performance
- Build reusable SQL procedures and functions
- Interpret SQL results from a business perspective

---

**Built by Kritika Sharma**  
Indore, India | [LinkedIn](https://www.linkedin.com/in/kritika-sharma-a72199235/)
