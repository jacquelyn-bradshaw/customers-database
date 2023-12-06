USE customers;

/* Alter tables email_address and phone_numbers in the customers database by
adding Foreign keys that reference Primary keys from relevant tables */

--  ALTER
ALTER TABLE email_address
ADD CONSTRAINT 
fk_email_address
FOREIGN KEY
(email_customer_id)
REFERENCES 
customer_details
(customer_id);
 
ALTER TABLE phone_numbers
ADD CONSTRAINT 
fk_phone_numbers
FOREIGN KEY
(phone_number_customer_id)
REFERENCES 
customer_details
(customer_id);
 
-- Remove the table called orders from our database
DROP TABLE orders;
 