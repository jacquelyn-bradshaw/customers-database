USE customer;

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

SELECT customer_id,
COUNT(orders_customer_id) AS count_orders,
is_eligible(COUNT(orders_customer_id)) AS is_eligible_discount
FROM customer_details
INNER JOIN orders
ON customer_id = orders_customer_id
GROUP BY orders_customer_id;
