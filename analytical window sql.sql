-- 1. Assign row numbers to customers ordered by credit limit descending.
select  row_number() over(order by cust_credit_limit  desc) as row_num, cust_credit_limit from sh.customers

-- 2. Rank customers within each state by credit limit.
select cust_state_province, cust_credit_limit, rank() over (partition by cust_state_province order by cust_credit_limit desc) as rank_cust from sh.customers

-- 3. Use DENSE_RANK() to find the top 5 credit holders per country.
select * from( 
select country_id, cust_credit_limit, dense_rank() over (partition by country_id order by  cust_credit_limit desc) as top_ranks  from sh.customers) 
where top_ranks <= 5;

-- 4. Divide customers into 4 quartiles based on their credit limit using NTILE(4).
select cust_credit_limit,ntile(4) over(order by cust_credit_limit desc) as quartiles from sh.customers

-- 5. Calculate a running total of credit limits ordered by customer_id.
select cust_id,cust_credit_limit, sum(cust_credit_limit) over(order by cust_id ) as total_credit_limit from sh.customers

-- 6. Show cumulative average credit limit by country.
select country_id, cust_id, cust_credit_limit, avg(cust_credit_limit) over (partition by country_id order by cust_id  rows between unbounded preceding and current row) as cumulative_average from sh.customers

-- 7. Compare each customer’s credit limit to the previous one using LAG().
select cust_id,cust_credit_limit, lag(cust_credit_limit, 1) over(order by cust_id  desc) as previous_limit from sh.customers