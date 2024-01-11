USE customer;

/* A stored function that accepts the total number of orders
per customer as a parameter and then assesses whether they are
eligible for a discount.
*/

DELIMITER //
CREATE FUNCTION is_eligible(count_orders INT)
RETURNS CHAR(10)
DETERMINISTIC
BEGIN
	DECLARE customer_status CHAR(10);
    IF count_orders >= 2 THEN SET customer_status = "Yes";
    ELSEIF count_orders < 2 THEN SET customer_status = "No";
    END IF;
    RETURN customer_status;
    END //
DELIMITER ;

/* Use the is_eligible function on the customer_details and orders
tables to show which customers are eligible for a discount */

SELECT customer_id,
COUNT(orders_customer_id) AS count_orders,
is_eligible(COUNT(orders_customer_id)) AS is_eligible_discount
FROM customer_details
INNER JOIN orders
ON customer_id = orders_customer_id
GROUP BY orders_customer_id;
