-- Challenge 1 - Design the Database
-- Design an Entity-Relationship (E-R) diagram for your database.
-- The database should have at least four tables: cars, customers, salespersons and invoices.
-- Cars - e.g. the vehicle identification number (VIN), manufacturer, model, year, and color of the cars in your company's inventory.
-- Customers - e.g. the customer ID, name, phone number, email, address, city, state/province, country, and zip/postal code of the customers.
-- Salespersons - e.g. staff ID, name, and the store at your company.
-- Invoices - e.g. the invoice number, date, car, customer, and salesperson related to each car sale.

CREATE DATABASE IF NOT EXISTS standcar;

USE standcar;

DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS invoices;

CREATE TABLE cars
(
car_id INT AUTO_INCREMENT PRIMARY KEY,
VIN VARCHAR(255),
manufacturer VARCHAR(255),
model VARCHAR(255),
year INT,
color VARCHAR(255)
);

CREATE TABLE customers
(
id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
name VARCHAR(255),
phone_number VARCHAR(255),
email VARCHAR(255),
address VARCHAR(255),
city VARCHAR(255),
state VARCHAR(255),
country VARCHAR(255),
zip VARCHAR(255)
);

CREATE TABLE salespersons
(
id INT AUTO_INCREMENT PRIMARY KEY,
staff_id INT,
name VARCHAR (255),
store VARCHAR (255)
);

CREATE TABLE invoices
(
id INT AUTO_INCREMENT PRIMARY KEY,
invoice_number INT,
invoice_date VARCHAR (255),
car_id INT,
customer_id INT,
staff_id INT,
FOREIGN KEY (car_id) REFERENCES cars(car_id),
FOREIGN KEY (customer_id) REFERENCES customers(id),
FOREIGN KEY (staff_id) REFERENCES salesperson(id)
);