1 1. Find customers born after the year 1990.
 select CUST_FIRST_NAME, CUST_YEAR_OF_BIRTH from SH.CUSTOMERS WHERE CUST_YEAR_OF_BIRTH >1990

2. 2. List all male customers (`CUST_GENDER = 'M'`).

Select CUST_FIRST_NAME, CUST_GENDER from SH.CUSTOMERS WHERE CUST_GENDER  = 'M'

3. Retrieve all female customers (`CUST_GENDER = 'F'`) living in Sydney.

Select CUST_FIRST_NAME,CUST_CITY, CUST_GENDER from SH.CUSTOMERS WHERE CUST_GENDER = 'F' AND CUST_CITY = 'Sydney'

4.Find customers with income level `"G: 130,000 - 149,999"`.
Select CUST_FIRST_NAME,CUST_INCOME_LEVEL from SH.CUSTOMERS where CUST_INCOME_LEVEL = 'G: 130,000 - 149,999'

5.5. Get all customers with a credit limit above 10,000.
Select CUST_FIRST_NAME,CUST_CREDIT_LIMIT from SH.CUSTOMERS where CUST_CREDIT_LIMIT > 10000

6.Retrieve customers from the state "California". 
Select CUST_FIRST_NAME,CUST_STATE_PROVINCE from SH.CUSTOMERS where CUST_STATE_PROVINCE = 'California'

7. Find customers who have provided an email address.
where CUST_CREDIT_LIMIT > 10000

8. List customers with missing marital status.
Select CUST_FIRST_NAME,CUST_MARITAL_STATUS from SH.CUSTOMERS WHERE CUST_MARITAL_STATUS is NULL

9. Find customers whose postal code starts with "53".
select CUST_FIRST_NAME, CUST_POSTAL_CODE from SH.CUSTOMERS WHERE CUST_POSTAL_CODE like '53%'

10. Get customers born before 1980 with a credit limit above 5,000.
select CUST_FIRST_NAME, CUST_YEAR_OF_BIRTH, CUST_CREDIT_LIMIT from SH.CUSTOMERS WHERE 
 CUST_YEAR_OF_BIRTH <1980 and CUST_CREDIT_LIMIT > 5000