USE customers;

/* Using the customer details table I am creating a trigger that
will activate before the INSERT statement on inserted values to
ensure that the first character is upper case and the rest of the
characters are lower case */
DELIMITER //
CREATE TRIGGER customer_details_before_insert
BEFORE INSERT
ON customer_details
FOR EACH ROW
BEGIN
	SET NEW.f_name = CONCAT(UPPER(SUBSTRING(NEW.f_name,1,1)), 
							LOWER(SUBSTRING(NEW.f_name FROM 2)));
  SET NEW.l_name = CONCAT(UPPER(SUBSTRING(NEW.l_name,1,1)), 
							LOWER(SUBSTRING(NEW.l_name FROM 2)));
    END //
DELIMITER ;

-- Insert data into the customer details table
INSERT INTO customer_details VALUES 
(5, "JaMes", "cOOk"),
(6, "gEOrgE", "shAW"),
(7, "henry", "flank");

-- Check data has been inserted correctly using the trigger
SELECT * FROM customer_details;
