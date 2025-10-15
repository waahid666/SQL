1.Count the number of customers in each city.
select count(*),CUST_CITY FROM SH.CUSTOMERS GROUP BY CUST_CITY

2.Find cities with more than 100 customers.
select count(*),CUST_CITY FROM SH.CUSTOMERS GROUP BY CUST_CITY HAVING count(*)>100

3.Count the number of customers in each state.
select count(*),CUST_STATE_PROVINCE FROM SH.CUSTOMERS GROUP BY CUST_STATE_PROVINCE 

4.Find states with fewer than 50 customers.
select count(*),CUST_STATE_PROVINCE FROM SH.CUSTOMERS GROUP BY CUST_STATE_PROVINCE having count(*)<50

5.Calculate the average credit limit of customers in each city.
select CUST_CITY, AVG(CUST_CREDIT_LIMIT) FROM SH.CUSTOMERS group by CUST_CITY

6.Find cities with average credit limit greater than 8,000.
select CUST_CITY, AVG(CUST_CREDIT_LIMIT) FROM SH.CUSTOMERS group by CUST_CITY HAVING AVG(CUST_CREDIT_LIMIT)>8000

7.Count customers by marital status.
SELECT Count(*) CUST_MARITAL_STATUS FROM SH.CUSTOMERS

8.Calculate the average year of birth grouped by gender.
SELECT CUST_GENDER, AVG(CUST_YEAR_OF_BIRTH)FROM SH.CUSTOMERS grouP BY CUST_GENDER

9.Find genders with average year of birth after 1990.
select CUST_GENDER, AVG(CUST_YEAR_OF_BIRTH) FROM sh.CUSTOMERS group by CUST_GENDER having AVG(CUST_YEAR_OF_BIRTH) >1990;

10.Count the number of customers in each country.
SELECT COUNTRY_ID COUNT(*),FROM SH.CUSTOMERS GROUP BY COUNTRY_ID