create database sale;
use sale;
select * from walmart_sales;

                                   #Monthly Revenue and Order Volume
SELECT
    YEAR(STR_TO_DATE(Date, '%d-%m-%Y')) AS order_year,
    MONTH(STR_TO_DATE(Date, '%d-%m-%Y')) AS order_month,
    SUM(Weekly_Sales) AS total_revenue,
    COUNT(*) AS weeks_count
FROM
    walmart_sales
GROUP BY
    YEAR(STR_TO_DATE(Date, '%d-%m-%Y')),
    MONTH(STR_TO_DATE(Date, '%d-%m-%Y'))
ORDER BY
    order_year,
    order_month;
					#Top 3 Months by Total Sales


    SELECT
    YEAR(STR_TO_DATE(Date, '%d-%m-%Y')) AS order_year,
    MONTH(STR_TO_DATE(Date, '%d-%m-%Y')) AS order_month,
    SUM(Weekly_Sales) AS total_revenue
FROM
    walmart_sales
GROUP BY
    YEAR(STR_TO_DATE(Date, '%d-%m-%Y')),
    MONTH(STR_TO_DATE(Date, '%d-%m-%Y'))
ORDER BY
    total_revenue DESC
LIMIT 3;


                                             #Monthly Revenue for a Specific Year (e.g., 2010)
SELECT
    MONTH(STR_TO_DATE(Date, '%d-%m-%Y')) AS order_month,
    SUM(Weekly_Sales) AS monthly_revenue
FROM
    walmart_sales
WHERE
    YEAR(STR_TO_DATE(Date, '%d-%m-%Y')) = 2010
GROUP BY
    MONTH(STR_TO_DATE(Date, '%d-%m-%Y'))
ORDER BY
    order_month;
