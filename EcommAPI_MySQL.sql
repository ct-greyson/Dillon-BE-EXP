CREATE DATABASE e_commerce_db;

CREATE TABLE customers (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(75) NOT NULL,
email VARCHAR(250) NOT NULL UNIQUE,
phone VARCHAR(14) NOT NULL
);

CREATE TABLE products (
id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
price FLOAT NOT NULL,
product_description VARCHAR(300) NULL
);

CREATE TABLE orders (
id INT AUTO_INCREMENT PRIMARY KEY,
date_ordered DATE NOT NULL,
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO customers (name, email, phone)
VALUES 
    ('Iron Man', 'iron.man@marvel.com', '000-000-0000'),
    ('Thor', 'thor@marvel.com', '111-111-1111'),
    ('Spiderman', 'spider.man@marvel.com', '222-222-2222'),
    ('Black Widow', 'black.widwo@marvel.com', '333-333-3333');

INSERT INTO products (product_name, price, product_description)
VALUES 
    ('Desk Chair', '189.95', 'Perfect option for gaming, working and studying, the aggressive and fabulous look brings a special yet unique tone to both game room and modern office. Meanwhile, you can also chill out and take a break for fun by reclining the chair after hours of working or gaming.'),
	('Gaming Mouse', '69.95', 'The Optimal mouse for gaming. Attractive RGB lighting and quick response with low latency is every gamers dream and you have it here!'),
    ('Canned Air', '3.99', "Keep your set up clean and tidy with powerful canned air! Dust bunny's be gone!")
    ;

 
    
DROP TABLE products;
    