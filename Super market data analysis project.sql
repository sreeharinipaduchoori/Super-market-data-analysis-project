select*from satyasai_hospitals.supermarket_sales;
# 1.Find out the total no of Products sold 
select quantity,sum(Product_line)from supermarket_sales
group by quantity;

# 2.Find out all Product categories / types
select distinct(product_line) from supermarket_sales;

#3.Find out the total revenue.
select sum(total)as total_revenue from  supermarket_sales;

#4.Find out total revenue in each Branch.
select branch,sum(total)as total_revenue from supermarket_sales
group by branch;

#5.Find out total products sold in each Branch.
select branch,count(product_line)from supermarket_sales
group by branch;

#6.Which City has highest sales ( highest sales = highest revenue/total)
select city, sum(total)from supermarket_sales
group by city
order by sum(total) desc
limit 1;

#7.Find out the most selling item/product.
select product_line,count(*) from supermarket_sales
group by Product_line
order by count(*)desc
limit 1;

#8.Find out the total number of products by Gender.
select Gender, count(product_line) from supermarket_sales
group by Gender;

#9.Find out the most popular payment method.
select Payment from supermarket_sales
order by Payment desc
limit 1;

#10.Which product has highest rating
select product_line from supermarket_sales
order by rating desc;

#11.List down 5 products which has lowest rating
select product_line,min(rating) from supermarket_sales
group by product_line
limit 5;

#12.List down top 5 products which have the highest revenue.
select product_line,max(rating) from supermarket_sales
group by Product_line
limit 5;

#13.How many products are sold in each  product category/type.
select Product_line from supermarket_sales
group by product_line;

#14.Find out the total sales/revenue in each payment method.
select customer_type,count(quantity)from supermarket_sales
group by Customer_type;

#15.List down top 5  cities which has highest sales
select city,max(quantity)from supermarket_sales
group by city
order by max(Quantity)desc
limit 5;

#16.list down top 5 cities which has lowest sales
select city,min(quantity)from supermarket_sales
group by city
order by min(quantity)
limit 5;


#17.Which type of customers are ordering more ( member or normal)
select customer_type,max(quantity)from supermarket_sales
group by Customer_type
order by max(quantity) desc
limit 2;

#18.Find out total income on each product line / type.
select product_line,sum(gross_income)from supermarket_sales
group by product_line;