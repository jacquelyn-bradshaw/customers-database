USE customers;

/* A stored procedure that finds all the customers based in a city
and returns their first and last names */

DELIMITER //

CREATE PROCEDURE SelectAllCustomers(city varchar(50))
BEGIN
  SELECT f_name, l_name
  FROM customer_details
  WHERE customer_id IN(
    SELECT address_customer_id
    FROM address
    WHERE city = city
  );
  END //

DELIMITER ;

/* Use the stored procedure to find all find all customers
based in London */

CALL SelectAllCustomers('London');
