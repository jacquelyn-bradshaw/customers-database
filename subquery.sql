-- SUBQUERY
/* A query nested inside another SQL query.
FIND THE FIRST, LAST NAME IN CUSTOMER TABLE WITH
PHONE NUMBER '555-3344' */
USE customers;
SELECT * FROM customer_details;
SELECT * FROM phone_numbers;
SELECT f_name,
	   l_name
FROM customer_details
WHERE customer_id IN(
	SELECT phone_number_customer_id 
	FROM phone_numbers 
	WHERE phone_number = '555-3344'
);

-- INNER JOIN WORKING SAME WAY AS THE ABOVE SUBQUERY
SELECT c.f_name AS first_name,
       c.l_name AS last_name
FROM customer_details AS c
INNER JOIN phone_numbers AS p
ON c.customer_id = p.phone_number_customer_id
WHERE p.phone_number = '555-3344';
