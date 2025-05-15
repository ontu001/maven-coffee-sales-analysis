drop table transactions;
-- Create The table
CREATE TABLE transactions (
    transaction_id INT,
    transaction_date DATE,
    transaction_time TIME,
    transaction_qty INT,
    store_id INT,
    store_location VARCHAR(100),
    product_id INT,
    unit_price DECIMAL(10, 2),
    product_category VARCHAR(50),
    product_type VARCHAR(100),
    product_detail VARCHAR(100)
);



-- Undderstand the data
select *
from transactions;

Select count(*)
from transactions;

SELECT count(*)
FROM information_schema.columns
WHERE table_name = 'transactions';



-- EDA Maven Coffee sales --

-- Total Transaction of APRIL 2023
select count(transaction_id)
from transactions
where transaction_date between '2023-04-01' and '2023-04-30';

-- MOM Transaction Trend
select extract(month from transaction_date) as Month_number, count(transaction_id) as total_transaction
from transactions
group by 1;


-- Total Revenue
select sum(unit_price * transaction_qty) as Total_Revenue
from transactions;



-- Best Selling Product Based on daily average sell
select 
	product_detail,
    sum(transaction_qty) as total_Quantity,
	count(distinct date(transaction_date)) as Date_Count, -- to find unique selling date 
    round(sum(transaction_qty)/count(distinct date(transaction_date)), 2) as Avg_sell -- to find per day average sell
from transactions
group by 1
order by 4 desc;


-- Avegrage Order Value AOV
select
	round(sum(transaction_qty * unit_price) / count(distinct transaction_id), 2) as AOV
from transactions;




-- Having Vs Where 
-- Havig > Used with group by clause
-- Where > Used without group by clause

-- Find those product which have more than 1000 transaction
select
	product_detail,
    count(distinct transaction_id) as total_transaction
from transactions
group by 1
having total_transaction>1000
order by 2 desc;



-- LIKE , ILIKE, IN, BETWEEN , ISNULL
select product_category, product_detail
from transactions
where product_detail like 'G%';

-- Find all product type under every product category
select
	product_category,
    group_concat(distinct product_type separator ',') as Products
from transactions
group by 1;
