--TASK - 1

--create database SupplyChainFinanceManagement
--use SupplyChainFinanceManagement

--CREATE TABLE dim_customer
--(
--    customer_code INT PRIMARY KEY,
--    customer      VARCHAR(150) NOT NULL,
--    platform      VARCHAR(45) NOT NULL,
--    channel       VARCHAR(45) NOT NULL,
--    market        VARCHAR(45) NOT NULL,
--    sub_zone      VARCHAR(45) NOT NULL,
--    region        VARCHAR(45) NOT NULL
--);

--CREATE TABLE dim_product
--(
--    product_code VARCHAR(45) PRIMARY KEY,
--    division     VARCHAR(45) NOT NULL,
--    segment      VARCHAR(45) NOT NULL,
--    category     VARCHAR(45) NOT NULL,
--    product      VARCHAR(200) NOT NULL,
--    variant      VARCHAR(45) NOT NULL
--);

--CREATE TABLE fact_pre_invoice_deductions
--(
--    customer_code INT NOT NULL,
--    fiscal_year INT NOT NULL,
--    pre_invoice_discount_pct DECIMAL(5,4) NOT NULL,

--    CONSTRAINT PK_fact_pre_invoice_deductions
--        PRIMARY KEY (customer_code, fiscal_year),

--    CONSTRAINT FK_fact_pre_invoice_customer
--        FOREIGN KEY (customer_code)
--        REFERENCES dim_customer(customer_code)
--);

--CREATE TABLE fact_post_invoice_deductions
--(
--    customer_code INT NOT NULL,
--    product_code VARCHAR(45) NOT NULL,
--    date DATE NOT NULL,

--    discounts_pct DECIMAL(5,4) NOT NULL,
--    other_deductions_pct DECIMAL(5,4) NOT NULL,

--    CONSTRAINT PK_fact_post_invoice_deductions
--        PRIMARY KEY (customer_code, product_code, date),

--    CONSTRAINT FK_postinv_customer
--        FOREIGN KEY (customer_code)
--        REFERENCES dim_customer(customer_code),

--    CONSTRAINT FK_postinv_product
--        FOREIGN KEY (product_code)
--        REFERENCES dim_product(product_code)
--);

--CREATE TABLE fact_sales_monthly
--(
--    [date] DATE NOT NULL,
--    product_code VARCHAR(45) NOT NULL,
--    customer_code INT NOT NULL,
--    sold_quantity INT NOT NULL,

--    CONSTRAINT PK_fact_sales_monthly
--        PRIMARY KEY ([date], product_code, customer_code),

--    CONSTRAINT FK_sales_product
--        FOREIGN KEY (product_code)
--        REFERENCES dim_product(product_code),

--    CONSTRAINT FK_sales_customer
--        FOREIGN KEY (customer_code)
--        REFERENCES dim_customer(customer_code)
--);

--CREATE TABLE fact_gross_price
--(
--    product_code VARCHAR(45) NOT NULL,
--    fiscal_year INT NOT NULL,
--    gross_price DECIMAL(15,4) NOT NULL,

--    CONSTRAINT PK_fact_gross_price
--        PRIMARY KEY (product_code, fiscal_year),

--    CONSTRAINT FK_grossprice_product
--        FOREIGN KEY (product_code)
--        REFERENCES dim_product(product_code)
--);

--CREATE TABLE fact_manufacturing_cost
--(
--    product_code VARCHAR(45) NOT NULL,
--    cost_year INT NOT NULL,
--    manufacturing_cost DECIMAL(15,4) NOT NULL,

--    CONSTRAINT PK_fact_manufacturing_cost
--        PRIMARY KEY (product_code, cost_year),

--    CONSTRAINT FK_manufacturing_product
--        FOREIGN KEY (product_code)
--        REFERENCES dim_product(product_code)
--);

--CREATE TABLE fact_freight_cost
--(
--    market VARCHAR(45) NOT NULL,
--    fiscal_year INT NOT NULL,
--    freight_pct DECIMAL(5,4) NOT NULL,
--    other_cost_pct DECIMAL(5,4) NOT NULL,

--    CONSTRAINT PK_fact_freight_cost
--        PRIMARY KEY (market, fiscal_year)
--);

--CREATE TABLE fact_forecast_monthly
--(
--    [date] DATE NOT NULL,
--    fiscal_year INT NOT NULL,
--    product_code VARCHAR(45) NOT NULL,
--    customer_code INT NOT NULL,
--    forecast_quantity INT NOT NULL,

--    CONSTRAINT PK_fact_forecast_monthly
--        PRIMARY KEY ([date], product_code, customer_code),

--    CONSTRAINT FK_forecast_product
--        FOREIGN KEY (product_code)
--        REFERENCES dim_product(product_code),

--    CONSTRAINT FK_forecast_customer
--        FOREIGN KEY (customer_code)
--        REFERENCES dim_customer(customer_code)
--);

--TASK - 2

--INSERT INTO dim_customer
--(customer_code, customer, platform, channel, market, sub_zone, region)
--VALUES
--(70020104, 'Atliq e Store', 'E-Commerce', 'Direct', 'Austria', 'NE', 'EU'),
--(70021096, 'Atliq e Store', 'E-Commerce', 'Direct', 'United Kingdom', 'NE', 'EU'),
--(70022084, 'Atliq Exclusive', 'Brick & Mortar', 'Direct', 'USA', 'NA', 'NA'),
--(70022085, 'Atliq e Store', 'E-Commerce', 'Direct', 'USA', 'NA', 'NA'),
--(70023031, 'Atliq Exclusive', 'Brick & Mortar', 'Direct', 'Canada', 'NA', 'NA'),
--(70023032, 'Atliq e Store', 'E-Commerce', 'Direct', 'Canada', 'NA', 'NA'),
--(70026206, 'Atliq e Store', 'E-Commerce', 'Direct', 'Mexico', 'LATAM', 'LATAM'),
--(70027208, 'Atliq e Store', 'E-Commerce', 'Direct', 'Brazil', 'LATAM', 'LATAM'),
--(80001019, 'Neptune', 'Brick & Mortar', 'Distributor', 'China', 'ROA', 'APAC'),
--(80006154, 'Synthetic', 'Brick & Mortar', 'Distributor', 'Philippines', 'ROA', 'APAC'),
--(80006155, 'Novus', 'Brick & Mortar', 'Distributor', 'Philippines', 'ROA', 'APAC');

--INSERT INTO dim_product
--(product_code, division, segment, category, product, variant)
--VALUES
--('A1919150403', 'P & A', 'Peripherals', 'MotherBoard', 'AQ MB Lito', 'Plus 2'),
--('A1920150404', 'P & A', 'Peripherals', 'MotherBoard', 'AQ MB Lito', 'Premium'),
--('A2020150501', 'P & A', 'Peripherals', 'MotherBoard', 'AQ MB Lito 2', 'Standard'),
--('A2020150502', 'P & A', 'Peripherals', 'MotherBoard', 'AQ MB Lito 2', 'Plus 1'),
--('A2021150503', 'P & A', 'Peripherals', 'MotherBoard', 'AQ MB Lito 2', 'Plus 2'),
--('A2021150504', 'P & A', 'Peripherals', 'MotherBoard', 'AQ MB Lito 2', 'Premium'),
--('A2118150101', 'P & A', 'Accessories', 'Mouse', 'AQ Master wired x1 Ms', 'Standard 1'),
--('A2118150102', 'P & A', 'Accessories', 'Mouse', 'AQ Master wired x1 Ms', 'Standard 2'),
--('A2118150103', 'P & A', 'Accessories', 'Mouse', 'AQ Master wired x1 Ms', 'Plus 1'),
--('A2118150104', 'P & A', 'Accessories', 'Mouse', 'AQ Master wired x1 Ms', 'Plus 2'),
--('A2118150105', 'P & A', 'Accessories', 'Mouse', 'AQ Master wired x1 Ms', 'Premium 1');

--INSERT INTO fact_gross_price
--(product_code, fiscal_year, gross_price)
--VALUES
--('A1919150403',2018,18.50),
--('A1920150404',2018,22.75),
--('A2020150501',2018,24.10),
--('A2020150502',2018,26.80),
--('A2021150503',2018,28.50),
--('A2021150504',2018,31.25),
--('A2118150101',2018,15.40),
--('A2118150102',2018,16.20),
--('A2118150103',2018,17.10),
--('A2118150104',2018,18.90),
--('A2118150105',2018,20.75);

--INSERT INTO fact_manufacturing_cost
--(product_code, cost_year, manufacturing_cost)
--VALUES
--('A1919150403',2018,10.20),
--('A1920150404',2018,12.50),
--('A2020150501',2018,13.80),
--('A2020150502',2018,15.40),
--('A2021150503',2018,16.20),
--('A2021150504',2018,18.10),
--('A2118150101',2018,8.60),
--('A2118150102',2018,9.10),
--('A2118150103',2018,9.80),
--('A2118150104',2018,10.70),
--('A2118150105',2018,11.90),
--('A1919150403',2019,10.80),
--('A1920150404',2019,13.10),
--('A2020150501',2019,14.40),
--('A2020150502',2019,15.90),
--('A2021150503',2019,16.80),
--('A2021150504',2019,18.70),
--('A2118150101',2019,9.10),
--('A2118150102',2019,9.70),
--('A2118150103',2019,10.40);

--INSERT INTO fact_freight_cost
--(market, fiscal_year, freight_pct, other_cost_pct)
--VALUES
--('India',2018,0.0400,0.0150),
--('USA',2018,0.0700,0.0200),
--('Canada',2018,0.0650,0.0180),
--('Austria',2018,0.0550,0.0170),
--('United Kingdom',2018,0.0600,0.0190),
--('Mexico',2018,0.0750,0.0220),
--('Brazil',2018,0.0800,0.0250),
--('China',2018,0.0500,0.0160),
--('Philippines',2018,0.0600,0.0180),
--('India',2019,0.0420,0.0160),
--('USA',2019,0.0720,0.0210),
--('Canada',2019,0.0670,0.0190),
--('Austria',2019,0.0570,0.0180),
--('United Kingdom',2019,0.0620,0.0200),
--('Mexico',2019,0.0770,0.0230),
--('Brazil',2019,0.0820,0.0260),
--('China',2019,0.0520,0.0170),
--('Philippines',2019,0.0620,0.0190);

--INSERT INTO fact_pre_invoice_deductions
--(customer_code, fiscal_year, pre_invoice_discount_pct)
--VALUES
--(70020104,2018,0.0500),
--(70021096,2018,0.0600),
--(70022084,2018,0.0450),
--(70022085,2018,0.0550),
--(70023031,2018,0.0400),
--(70023032,2018,0.0500),
--(70026206,2018,0.0700),
--(70027208,2018,0.0650),
--(80001019,2018,0.0350),
--(80006154,2018,0.0600),
--(80006155,2018,0.0550),

--(70020104,2019,0.0520),
--(70021096,2019,0.0620),
--(70022084,2019,0.0470),
--(70022085,2019,0.0570),
--(70023031,2019,0.0420),
--(70023032,2019,0.0520),
--(70026206,2019,0.0720),
--(70027208,2019,0.0670),
--(80001019,2019,0.0370),
--(80006154,2019,0.0620),
--(80006155,2019,0.0570);

--INSERT INTO fact_post_invoice_deductions
--(customer_code, product_code, [date], discounts_pct, other_deductions_pct)
--VALUES
--(70020104,'A2118150101','2017-09-01',0.0200,0.0100),
--(70021096,'A2118150102','2017-09-01',0.0250,0.0120),
--(70022084,'A2118150103','2017-09-01',0.0180,0.0090),
--(70022085,'A2118150104','2017-09-01',0.0220,0.0110),
--(70023031,'A2118150105','2017-09-01',0.0200,0.0100),
--(70023032,'A2020150501','2017-10-01',0.0240,0.0120),
--(70026206,'A2020150502','2017-10-01',0.0260,0.0130),
--(70027208,'A2021150503','2017-10-01',0.0280,0.0140),
--(80001019,'A2021150504','2017-10-01',0.0210,0.0100),
--(80006154,'A1919150403','2017-11-01',0.0190,0.0090),
--(80006155,'A1920150404','2017-11-01',0.0230,0.0110),
--(70020104,'A2118150101','2018-01-01',0.0200,0.0100),
--(70021096,'A2118150102','2018-02-01',0.0250,0.0120),
--(70022084,'A2118150103','2018-03-01',0.0180,0.0090),
--(70022085,'A2118150104','2018-04-01',0.0220,0.0110),
--(70023031,'A2118150105','2018-05-01',0.0200,0.0100),
--(70023032,'A2020150501','2018-06-01',0.0240,0.0120),
--(70026206,'A2020150502','2018-07-01',0.0260,0.0130),
--(70027208,'A2021150503','2018-08-01',0.0280,0.0140),
--(80001019,'A2021150504','2018-09-01',0.0210,0.0100),
--(80006154,'A1919150403','2018-10-01',0.0190,0.0090),
--(80006155,'A1920150404','2018-11-01',0.0230,0.0110);

--INSERT INTO fact_sales_monthly
--([date], product_code, customer_code, sold_quantity)
--VALUES
--('2017-09-01','A2118150101',70020104,51),
--('2017-09-01','A2118150102',70021096,43),
--('2017-09-01','A2118150103',70022084,62),
--('2017-10-01','A2118150104',70022085,58),
--('2017-10-01','A2118150105',70023031,39),
--('2017-10-01','A2020150501',70023032,47),
--('2017-11-01','A2020150502',70026206,71),
--('2017-11-01','A2021150503',70027208,66),
--('2017-11-01','A2021150504',80001019,34),
--('2017-12-01','A1919150403',80006154,55),
--('2017-12-01','A1920150404',80006155,44),
--('2018-01-01','A2118150101',70020104,63),
--('2018-01-01','A2118150102',70021096,41),
--('2018-02-01','A2118150103',70022084,72),
--('2018-02-01','A2118150104',70022085,68),
--('2018-03-01','A2118150105',70023031,46),
--('2018-03-01','A2020150501',70023032,54),
--('2018-04-01','A2020150502',70026206,78),
--('2018-04-01','A2021150503',70027208,69),
--('2018-05-01','A2021150504',80001019,37),
--('2018-05-01','A1919150403',80006154,59),
--('2018-06-01','A1920150404',80006155,49),
--('2018-06-01','A2118150101',70020104,66),
--('2018-07-01','A2118150102',70021096,48),
--('2018-07-01','A2118150103',70022084,74),
--('2018-08-01','A2118150104',70022085,70),
--('2018-08-01','A2118150105',70023031,52),
--('2018-09-01','A2020150501',70023032,60),
--('2018-09-01','A2020150502',70026206,82),
--('2018-10-01','A2021150503',70027208,73);

--INSERT INTO fact_forecast_monthly
--([date], fiscal_year, product_code, customer_code, forecast_quantity)
--VALUES
--('2017-09-01',2018,'A2118150101',70020104,55),
--('2017-09-01',2018,'A2118150102',70021096,45),
--('2017-09-01',2018,'A2118150103',70022084,65),
--('2017-10-01',2018,'A2118150104',70022085,60),
--('2017-10-01',2018,'A2118150105',70023031,42),
--('2017-10-01',2018,'A2020150501',70023032,50),
--('2017-11-01',2018,'A2020150502',70026206,75),
--('2017-11-01',2018,'A2021150503',70027208,70),
--('2017-11-01',2018,'A2021150504',80001019,38),
--('2017-12-01',2018,'A1919150403',80006154,58),
--('2017-12-01',2018,'A1920150404',80006155,47),
--('2018-01-01',2018,'A2118150101',70020104,66),
--('2018-01-01',2018,'A2118150102',70021096,44),
--('2018-02-01',2018,'A2118150103',70022084,76),
--('2018-02-01',2018,'A2118150104',70022085,71),
--('2018-03-01',2018,'A2118150105',70023031,49),
--('2018-03-01',2018,'A2020150501',70023032,57),
--('2018-04-01',2018,'A2020150502',70026206,82),
--('2018-04-01',2018,'A2021150503',70027208,73),
--('2018-05-01',2018,'A2021150504',80001019,40),
--('2018-05-01',2018,'A1919150403',80006154,63),
--('2018-06-01',2018,'A1920150404',80006155,53),
--('2018-06-01',2018,'A2118150101',70020104,69),
--('2018-07-01',2018,'A2118150102',70021096,52),
--('2018-07-01',2018,'A2118150103',70022084,79),
--('2018-08-01',2018,'A2118150104',70022085,74),
--('2018-08-01',2018,'A2118150105',70023031,55),
--('2018-09-01',2019,'A2020150501',70023032,64),
--('2018-09-01',2019,'A2020150502',70026206,86),
--('2018-10-01',2019,'A2021150503',70027208,77);


--Task-3 
--Q1) Assume calendar_date is '2023-07-15'. Apply the function to 
--this date and explain what value it will return as the fiscal year. 
select '2023-07-15' as calendar_Date,
case 
when month('2023-07-15') >= 9 then YEAR('2023-07-15') + 1
else YEAR('2023-07-15')
end as fiscal_year

--Q2) Analyzing Gross Sales: Monthly Product Transactions 
--Report 
--Write a Query  for making report on monthly product 
--transactions, including details such as date, product code, 
--product name, variant, sold quantity, gross price, and gross price 
--total. The query should involves joining several tables and 
--filtering results based on  customer code and fiscal year.
select s.date, s.product_code , t.product [product name], t.variant, s.sold_quantity, g.gross_price, (s.sold_quantity*g.gross_price)[total gross price]
from fact_sales_monthly s inner join fact_gross_price g on g.product_code = s.product_code and g.fiscal_year =
case
	when month(s.date) >= 9 then YEAR(s.date)+1
	else YEAR(s.date)
end 
inner join dim_product t on s.product_code = t.product_code 


--Task-4 
--Sales Trend Analysis: 
--Query the fact_monthly_sales table to identify the monthly sales 
--trend for each product. How do the sales volumes fluctuate over 
--time? 
select  product_code, year(date)[year], month(date)[month number], DATENAME(MONTH, date)[month],
sum(sold_quantity)[Total Sold Quantity]
from fact_Sales_monthly
group by 
product_code, year(date), month(date), DATENAME(MONTH, date)

--Customer Segmentation: 
--Utilizing the dim_customer table, segment customers based on 
--their purchasing behavior. Which customer segments contribute 
--the most to sales revenue? 
select customer_segment, sum(Total)[Total contribution] from 
(select *, 
case
	when Total > 3500 then 'High Value'
	when Total between 2500 and 3500 then 'Medium Value'
	else 'Low Value'
end as customer_segment
from (select c.customer_code, sum(g.gross_price*s.sold_quantity)[Total]
from dim_customer c inner join fact_sales_monthly s on c.customer_code = s.customer_code
inner join fact_gross_price g on s.product_code = g.product_code and g.fiscal_year =
case
	when month(s.date) >= 9 then YEAR(s.date)+1
	else YEAR(s.date)
end 
group by c.customer_code)t)m
group by customer_segment
order by [Total contribution] desc

--Product Performance Comparison: 
--Compare the performance of products in terms of sales quantity 
--and revenue generated. Which products are the top performers, 
--and which ones need improvement? 
select p.product_code, sum(s.sold_quantity)[Total Sales Quantity], sum(s.sold_quantity*g.gross_price)[Total Revenue]
from 
dim_product p inner join fact_sales_monthly s
on p.product_code = s.product_code
inner join fact_gross_price g
on s.product_code = g.product_code and 
g.fiscal_year = 
case
	when MONTH(s.date) >= 9 then YEAR(s.date)+1
	else YEAR(s.date)
end
group by p.product_code
order by [Total Revenue] desc, [Total Sales Quantity] desc

--Market Expansion Opportunities: 
--Analyze the fact_forecast_monthly table to identify potential 
--market expansion opportunities. Which markets show the highest 
--forecasted demand growth?
WITH cte AS
(SELECT c.market,
SUM(CASE
    WHEN f.fiscal_year = 2018
    THEN f.forecast_quantity
    ELSE 0 END) AS FY2018,
SUM(CASE
    WHEN f.fiscal_year = 2019
    THEN f.forecast_quantity
    ELSE 0 END) AS FY2019
FROM fact_forecast_monthly f INNER JOIN dim_customer c ON f.customer_code = c.customer_code GROUP BY c.market)
SELECT market,FY2018,FY2019, FY2019 - FY2018 AS Growth FROM cte ORDER BY Growth DESC;

--Cost Analysis: 
--Calculate the total manufacturing cost for each product and 
--compare it with the gross price to determine profitability. Which 
--products have the highest profit margins?
with cte as (select g.product_code, sum(g.gross_price)[gross price], sum(m.manufacturing_cost)[manufacturing cost]
from fact_gross_price g inner join fact_manufacturing_cost m on g.product_code = m.product_code and g.fiscal_year = m.cost_year
group by g.product_code)
SELECT *, (([gross price] - [manufacturing cost])/ [gross price]) * 100 AS [Profit Margin %] FROM cte ORDER BY [Profit Margin %] DESC

--Discount Impact Analysis: 
--Assess the impact of pre-invoice discounts on sales revenue. 
--How do varying discount levels affect overall revenue and 
--customer retention? 
SELECT i.pre_invoice_discount_pct, SUM(s.sold_quantity * g.gross_price) AS revenue
FROM fact_pre_invoice_deductions i INNER JOIN fact_sales_monthly s ON i.customer_code = s.customer_code AND i.fiscal_year =
CASE
   WHEN MONTH(s.date) >= 9 THEN YEAR(s.date) + 1
   ELSE YEAR(s.date)
END
INNER JOIN fact_gross_price g ON s.product_code = g.product_code AND g.fiscal_year =
CASE
   WHEN MONTH(s.date) >= 9 THEN YEAR(s.date) + 1
   ELSE YEAR(s.date)
END
GROUP BY i.pre_invoice_discount_pct ORDER BY revenue DESC;

--Market-specific Freight Costs: 
--Determine the average freight costs for different markets over 
--the years. Are there any noticeable trends or outliers in freight 
--expenses? 
select market,fiscal_year ,avg(freight_pct) as avg_freight_pct from fact_freight_cost f group by market, fiscal_year

--Seasonal Sales Patterns: 
--Explore the fact_monthly_sales table to identify seasonal sales 
--patterns. How do sales volumes vary throughout the year, and 
--are there any recurring trends? 
select MONTH(date)[monthnumber], DATENAME(MONTH,date)[month],YEAR(date)[year], sum(sold_quantity)[sold quantity] from fact_sales_monthly 
group by YEAR(date),MONTH(date), DATENAME(MONTH,date) order by year, monthnumber 

--Customer Loyalty Analysis: 
--Analyze customer purchase frequency and retention rates over 
--time. Which customers exhibit the highest levels of loyalty, and 
--how can their behavior be leveraged for targeted marketing 
--campaigns? 
select c.customer_code,YEAR(s.date)[year], count(s.customer_code)[purchase count]
from dim_customer c inner join fact_sales_monthly s on c.customer_code = s.customer_code
group by c.customer_code , YEAR(s.date)
order by [purchase count] desc

--Forecast Accuracy Evaluation: 
--Evaluate the accuracy of sales forecasts by comparing forecasted 
--quantities with actual sales data. Are there any significant 
--discrepancies, and how can forecast models be improved? 
select s.date, s.customer_code, s.product_code,s.sold_quantity, f.forecast_quantity, (s.sold_quantity-f.forecast_quantity)[difference between actual and forecasted quantity sold] from 
fact_sales_monthly s inner join fact_forecast_monthly f on s.date = f.date and f.product_code = s.product_code and f.customer_code = s.customer_code
order by [difference between actual and forecasted quantity sold] 

--Channel Performance Assessment: 
--Compare sales performance across different sales channels (e.g., 
--E-Commerce vs. Brick & Mortar). Which channels are most 
--effective in driving sales, and are there any opportunities for 
--optimization?
select c.channel, sum(s.sold_quantity*g.gross_price)[total sales], count(s.product_code)[sales count]
from dim_customer c inner join fact_sales_monthly s on s.customer_code = c.customer_code 
inner join fact_gross_price g on s.product_code = g.product_code and g.fiscal_year =
CASE
   WHEN MONTH(s.date) >= 9 THEN YEAR(s.date) + 1
   ELSE YEAR(s.date)
END
group by c.channel
order by [total sales] desc, [sales count] desc

--Geographical Sales Distribution: 
--Analyze sales distribution across different geographical regions. 
--How does sales performance vary by region, and are there any 
--emerging markets worth focusing on?
select c.region, sum(s.sold_quantity*g.gross_price)[total sales], count(s.product_code)[sales count]
from dim_customer c inner join fact_sales_monthly s on s.customer_code = c.customer_code 
inner join fact_gross_price g on s.product_code = g.product_code and g.fiscal_year =
CASE
   WHEN MONTH(s.date) >= 9 THEN YEAR(s.date) + 1
   ELSE YEAR(s.date)
END
group by c.region
order by [total sales] desc, [sales count] desc

--Task-5 
-- Write a query to find the customers who made purchases exceeding the average monthly sales quantity across all products.  
select c.customer_code, sum(s.sold_quantity)[total]
from dim_customer c inner join fact_sales_monthly s on c.customer_code = s.customer_code
group by c.customer_code 
having sum(s.sold_quantity) > (SELECT AVG(monthly_sales) FROM (SELECT YEAR(date) AS [year], MONTH(date) AS [month], SUM(sold_quantity) AS monthly_sales
FROM fact_sales_monthly GROUP BY YEAR(date), MONTH(date)) t)

--Implement a trigger that automatically inserts a record into the audit log table whenever a new entry is added to the sales table.
create table audit_log (customer_code VARCHAR(20), action VARCHAR(20),action_date DATETIME)

create trigger audit_log_trg
on fact_sales_monthly
after insert 
as
begin
insert into audit_log(customer_code, action, action_date)
select customer_code, 'Insert', getdate() from inserted
end

-- Use a window function to rank products based on their monthly sales quantity, partitioned by fiscal year. 
with cte as (select product_code,
case
	when month(date) >= 9 then year(date)+1
	else year(date)
end [Fiscal year]
,MONTH(date)[monthnumber], sum(sold_quantity)[total sold quantity]
from fact_sales_monthly 
group by product_code, 
case
	when month(date) >= 9 then year(date)+1
	else year(date)
end ,
MONTH(date))
select *, DENSE_RANK() over(partition by [Fiscal year], [monthnumber]
order by [total sold quantity] desc)[rank]
from cte

--Apply the LEAD or LAG function to compare monthly sales quantities of a product with the previous month's sales. 
select product_code,
CASE
        WHEN MONTH(date) >= 9 THEN YEAR(date) + 1
        ELSE YEAR(date)
    END AS fiscal_year,
MONTH(date)[month number], DATENAME(month,date)[month], 
lag(sold_quantity) over(partition by product_code order by
CASE
        WHEN MONTH(date) >= 9 THEN YEAR(date) + 1
        ELSE YEAR(date)
    END, month(date))[previous month sales]
from fact_sales_monthly

--Create a query to identify the top-selling products in each market based on their total sales quantity, utilizing subqueries and window functions. 
with cte as 
(select c.market,s.product_code, sum(s.sold_quantity)[total sales quantity], 
DENSE_RANK() over(partition by c.market order by sum(s.sold_quantity) desc)[ranking]
from dim_customer c inner join fact_sales_monthly s on c.customer_code = s.customer_code
group by c.market, s.product_code)
select market, product_code, [total sales quantity] from cte where ranking = 1
order by [total sales quantity] desc

--Design a stored procedure to generate a report showing the month-over-month growth rate of sales for each 
--product, using window functions to calculate the percentage change. 
CREATE PROCEDURE monthly_report
AS
BEGIN
WITH monthly_sales AS (SELECT product_code,
CASE
    WHEN MONTH(date) >= 9 THEN YEAR(date) + 1
    ELSE YEAR(date)
    END AS fiscal_year, MONTH(date) AS monthnumber, DATENAME(MONTH, date) AS [month],
SUM(sold_quantity) AS monthly_sales FROM fact_sales_monthly
GROUP BY product_code,
CASE
    WHEN MONTH(date) >= 9 THEN YEAR(date) + 1
    ELSE YEAR(date) END,
MONTH(date), DATENAME(MONTH, date)),
cte AS ( SELECT *,
LAG(monthly_sales) OVER(PARTITION BY product_code ORDER BY fiscal_year, monthnumber) AS previous_month_sales FROM monthly_sales)
SELECT product_code, fiscal_year, monthnumber,[month],monthly_sales,previous_month_sales,
((monthly_sales - previous_month_sales)/ NULLIF(previous_month_sales, 0)) * 100 AS [growth percent]
FROM cte;
END;

--Develop a user-defined function to calculate the average discount percentage given to customers for a 
--specific product, utilizing inbuilt functions to aggregate and analyze the data.
CREATE FUNCTION fn_AvgDiscount(@product_code VARCHAR(20))
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @avg_discount DECIMAL(10,2);

    SELECT @avg_discount = AVG(i.pre_invoice_discount_pct)
    FROM fact_pre_invoice_deductions i
    WHERE EXISTS
    (SELECT 1 FROM fact_sales_monthly s WHERE s.customer_code = i.customer_code AND s.product_code = @product_code
          AND i.fiscal_year =
              CASE
                  WHEN MONTH(s.date) >= 9 THEN YEAR(s.date) + 1
                  ELSE YEAR(s.date)
              END );
RETURN @avg_discount;
END;

--Write a query to identify the customers who made the highest total purchases in each region, using subqueries and 
--window functions to perform the analysis.
WITH cte AS
(SELECT c.region,c.customer_code,SUM(s.sold_quantity * g.gross_price) AS [Total Purchase],
 DENSE_RANK() OVER(PARTITION BY c.region ORDER BY SUM(s.sold_quantity * g.gross_price) DESC) AS ranking
 FROM dim_customer c INNER JOIN fact_sales_monthly s ON c.customer_code = s.customer_code INNER JOIN fact_gross_price g
 ON s.product_code = g.product_code AND g.fiscal_year =
 CASE
      WHEN MONTH(s.date) >= 9 THEN YEAR(s.date) + 1
      ELSE YEAR(s.date)
 END
GROUP BY  c.region,c.customer_code)
SELECt region, customer_code, [Total Purchase] FROM cte WHERE ranking = 1 ORDER BY region;

--Create a stored procedure to calculate the total revenue generated from sales for a given period,
--using inbuilt functions to handle date manipulation and aggregation. 
CREATE PROCEDURE total_revenue
    @start_date DATE,
    @end_date DATE
AS
BEGIN
SELECT SUM(s.sold_quantity * g.gross_price) AS [Total Revenue] FROM fact_sales_monthly s
 INNER JOIN fact_gross_price g ON s.product_code = g.product_code
AND g.fiscal_year =
            CASE
                WHEN MONTH(s.date) >= 9 THEN YEAR(s.date) + 1
                ELSE YEAR(s.date)
            END
 WHERE s.date BETWEEN @start_date AND @end_date;
END;

--Write a query to retrieve the products with the highest average gross price across all fiscal years, using subqueries 
--and inbuilt functions to perform the analysis
WITH cte AS
(SELECT product_code, AVG(gross_price) AS [Average Gross Price] FROM fact_gross_price GROUP BY product_code)
SELECT * FROM cte WHERE [Average Gross Price] =
(SELECT MAX([Average Gross Price])
    FROM cte);

