create database pizza_sales_db;

SELECT 
    *
FROM
    pizza_sales;


#Total Revenue 
SELECT 
    SUM(total_price) 
AS 
    Total_revenue
FROM
    pizza_sales;
    
 SELECT 
    *
FROM
    pizza_sales;
    
#Average order value
select sum(total_price)/count(distinct order_id) as average_order_value from pizza_sales;

#total pizzas sold

select sum(quantity) as total_pizzas_sold from pizza_sales;


#total orders placed

select count(distinct order_id) as total_orders_placed from pizza_sales;

    
#average pizzas per order 

select sum(quantity)/count(distinct order_id) as average_pizzas_per_order from pizza_sales;

#percentage sales by pizza category 

select pizza_category , sum(total_price)*100/(select sum(total_price) from pizza_sales) as percentage_total_sales  from pizza_sales group by pizza_category;


#percentage sales by pizza size 

select pizza_size , sum(total_price)*100/(select sum(total_price) from pizza_sales) as percentage_total_sales  from pizza_sales group by pizza_size ;

#total pizza sold by category

select pizza_category , sum(quantity) as total_pizzas_sold from pizza_sales group by pizza_category;




