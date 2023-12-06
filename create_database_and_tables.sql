-- Design and create a relational normalised database called customers.
CREATE DATABASE customers;

USE customers;

-- CUSTOMER_DETAILS id,fname,lname
CREATE TABLE customer_details(
	customer_id INT NOT NULL PRIMARY KEY,
   f_name VARCHAR(50) NOT NULL,
   l_name VARCHAR(50) NOT NULL
);

-- ADDRESS id,building#,city,street,post_code,country,address_customer_id
CREATE TABLE address(
	address_id INT NOT NULL PRIMARY KEY,
   building_number INT NOT NULL,
   city VARCHAR(50),
   street VARCHAR(50),
   post_code VARCHAR(30),
   country VARCHAR(30),
   address_customer_id INT NOT NULL
);

-- EMAIL_ADDRESS id,email_address,email_customer_id
CREATE TABLE email_address(
	email_address_id INT NOT NULL PRIMARY KEY,
   email_address VARCHAR(50),
   email_customer_id INT NOT NULL
);

-- PHONE_NUMBER id,phone_number_customer_id, number
CREATE TABLE phone_numbers(
	phone_number_id INT NOT NULL PRIMARY KEY,
   phone_number VARCHAR(50),
   phone_number_customer_id INT NOT NULL
);

-- ORDERS order_id, order_date,orders_customer_id
CREATE TABLE orders(
	orders_id INT NOT NULL PRIMARY KEY,
   order_date VARCHAR(50),
   orders_customer_id INT NOT NULL
);
