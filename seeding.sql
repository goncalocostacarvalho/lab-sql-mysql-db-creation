-- Challenge 3 - Seeding the Database
-- The purpose of database seeding is to provide some initial data for an empty database to start software development based on that data.

USE standcar;

INSERT INTO cars(car_id, VIN, model, manufacturer, year, color) VALUES
("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");

INSERT INTO customers(id, customer_id, name, phone_number, email, city, state, country, zip) VALUES
(10001, "Pablo Picasso", "+34636176382","-","Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", "28045"),
(20001, "Abraham Lincoln", "+13059077086","-", "120 SW 8th St", "Madrid", "Florida", "United States", "33130"),
(30001, "Napoleon Bonaparte", "+33179754000","-", "40 Rue du Colisée", "Paris", "le-de-France", "France", "75008");

INSERT INTO salespersons(id, staff_id, name, store) VALUES
(0001, "Petey Cruiser", "Madrid"),
(0002, "Anna Sthesia", "Barcelona"),
(0003, "Paul Molive", "Berlin"),
(0004, "Gail Forcewind", "Paris"),
(0005, "Paige Turner", "Miami"),
(0006, "Bob Frapples", "Mexico City"),
(0007, "Walter Melon", "Amsterdam"),
(0008, "Shonda Leer", "São Paulo");

INSERT INTO invoices(invoice_number, invoice_date, car_id, customer_id, staff_id) VALUES
(852399038, "22-08-2018", 1, 1, 3),
(731166526, "31-12-2018", 3, 3, 5),
(271135104, "22-01-2019", 2, 2, 7);



