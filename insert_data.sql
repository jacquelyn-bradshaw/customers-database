USE customers;

-- Add some data to the tables in the customers database
INSERT INTO customer_details
(customer_id, f_name, l_name) 
VALUES 
(1, 'Jon', 'Flanders'),
(2, 'Sam', 'Smith');

INSERT INTO address 
(address_id, building_number, street, city, post_code, country,address_customer_id) 
VALUES 
(1, '20', 'Birch Alley', 'London', 'SE24 0AB', 'UK',1),
(2, '17', 'Oak Street', 'London', 'SE25 0XY', NULL,2);

INSERT INTO email_address 
(email_address_id, email_customer_id, email_address)
VALUES 
(1, 2, 'ssmith@mail.com'),
(2, 1, 'jon@mail.com');
 
INSERT INTO phone_numbers 
(phone_number_id, phone_number_customer_id, phone_number) 
VALUES 
(1, 1, '555-1212'),
(2, 2, '555-3344');
 
INSERT INTO orders 
(orders_id, orders_customer_id, order_date) 
VALUES 
(1, 1, '2019-08-20'),
(2, 2, '2019-03-15');
