-- 1. Find the total, average, minimum, and maximum credit limit of all customers.
select  sum( cust_credit_limit) as total_credit_limit,
        avg( cust_credit_limit) as average_credit_limit,
        max( cust_credit_limit) as maximum_credit_limit,
        min( cust_credit_limit) as minimum_credit_limit 
from sh.customers  

-- 2. Count the number of customers in each income level.
select  cust_income_level, count(*) as number_of_customers from sh.customers group by cust_income_level 

-- 3. Show total credit limit by state and country.
select cust_state_province, country_id, sum( cust_credit_limit) as total_credit_limit
from sh.customers group by cust_state_province, country_id order by country_id , cust_state_province;

-- 4. Display average credit limit for each marital status and gender combination.
select cust_marital_status, cust_gender, avg( cust_credit_limit) as average_credit_limit
from sh.customers group  by cust_marital_status, cust_gender order by cust_marital_status, cust_gender

-- 5. Find the top 3 states with the highest average credit limit.
select cust_state_province, avg( cust_credit_limit) as average_credit_limit
from sh.customers group by cust_state_province order by cust_state_province desc  fetch first 3 rows only

-- 6. Find the country with the maximum total customer credit limit.
select  country_id, max( cust_credit_limit) as maximum_credit_limit
from sh.customers group by country_id order by country_id 

-- 7. Show the number of customers whose credit limit exceeds their state average.
SELECT cust_state_province,COUNT(*) AS num_customers_above_state_avg
FROM sh.customers WHERE cust_credit_limit > (SELECT AVG(cust_credit_limit)
FROM sh.customers) GROUP BY cust_state_province ORDER BY num_customers_above_state_avg DESC;
