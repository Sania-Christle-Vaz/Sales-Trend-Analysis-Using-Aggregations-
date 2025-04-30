CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1,  '2023-01-05', 100.00, 101),
(2,  '2023-01-15', 120.00, 102),
(3,  '2023-01-25', 90.00, 103),
(4,  '2023-02-01', 200.00, 104),
(5,  '2023-02-10', 150.00, 105),
(6,  '2023-02-20', 300.00, 101),
(7,  '2023-03-05', 250.00, 102),
(8,  '2023-03-18', 80.00, 103),
(9,  '2023-03-25', 60.00, 104),
(10, '2023-04-02', 175.00, 105),
(11, '2023-04-12', 195.00, 106),
(12, '2023-04-25', 85.00, 101),
(13, '2023-05-01', 140.00, 102),
(14, '2023-05-15', 210.00, 103),
(15, '2023-05-20', 160.00, 104),
(16, '2023-06-01', 300.00, 105),
(17, '2023-06-10', 180.00, 106),
(18, '2023-06-22', 110.00, 101),
(19, '2023-07-05', 130.00, 102),
(20, '2023-07-18', 90.00, 103);

Select * from online_sales;

-- Select year and month from the order_date
-- Calculate total revenue and total number of unique orders for each month
SELECT
    YEAR(order_date) AS order_year,           -- Extracts the year from the order_date
    MONTH(order_date) AS order_month,         -- Extracts the month from the order_date
    SUM(amount) AS total_revenue,             -- Calculates total revenue for each month
    COUNT(DISTINCT order_id) AS total_orders  -- Counts unique orders placed each month
FROM
    online_sales                               -- From the sales data table
GROUP BY
    YEAR(order_date),                          -- Grouping by year
    MONTH(order_date)                          -- Grouping by month within each year
ORDER BY
    order_year,                                -- Sorting results by year
    order_month;                               -- Then by month (chronologically)



