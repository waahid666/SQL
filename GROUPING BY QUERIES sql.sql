-- 1. Calculate the average credit limit per marital status.
select cust_marital_status, avg(cust_credit_limit)
from sh.customers
group by cust_marital_status;

-- 2. Find marital statuses with average credit limit less than 5,000.
select cust_marital_status, avg(cust_credit_limit)
from sh.customers
group by cust_marital_status having avg(cust_credit_limit)<5000;

-- 3. Count the number of customers by email domain (e.g., `company.example.com`).
select cust_email, count(*)
from sh.customers
group by cust_email ;

-- 4. Find email domains with more than 300 customers.
select cust_email, count(*)
from sh.customers
group by cust_email having count(*)>300;

-- 5. Calculate the average credit limit by validity (`CUST_VALID`).
select cust_valid, avg(cust_credit_limit)
from sh.customers
group by cust_valid;

-- 6. Find validity groups where the average credit limit is greater than 7,000.
select cust_valid, avg(cust_credit_limit)
 from sh.customers 
 group by cust_valid having avg(cust_credit_limit)>7000;

-- 7. Count the number of customers per state and city combination where there are more than 50 customers.
select cust_city,cust_state_province, count(*)
from sh.customers
group by cust_city,cust_state_province having count(*)>50;