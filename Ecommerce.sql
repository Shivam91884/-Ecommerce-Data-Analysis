create database  Ecommerce;

use Ecommerce;

-- Create the Customer table
CREATE TABLE Customer (
    customer_id VARCHAR(10),
    name VARCHAR(50),
    city VARCHAR(50),
    email VARCHAR(100),
    phone_no VARCHAR(15),
    address VARCHAR(255),
    pin_code INT,
    PRIMARY KEY (customer_id)
);

-- Create the Product table
CREATE TABLE Product (
    product_id VARCHAR(10),
    product_name VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    original_price DECIMAL(10, 2),
    selling_price DECIMAL(10, 2),
    stock INT,
    PRIMARY KEY (product_id)
);

-- Create the Order table
CREATE TABLE order_details (
    order_id INT NOT NULL AUTO_INCREMENT,
    customer_id VARCHAR(10) NOT NULL,
    product_id VARCHAR(10) NOT NULL,
    quantity DOUBLE NOT NULL,
    total_price DOUBLE NOT NULL,
    payment_mode VARCHAR(60) NOT NULL,
    order_date DATETIME DEFAULT NULL,
    order_status VARCHAR(20) NOT NULL,
    PRIMARY KEY (order_id)
);

-- Insert data into Customer table
INSERT INTO Customer (customer_id, name, city, email, phone_no, address, pin_code) VALUES
('C1001', 'Steve', 'Tokyo', 'steve@gmail.com', '4567897652', 'f.g.road', 99),
('C1002', 'John', 'Sydney', 'john@gmail.com', '9978234567', 'k.road', 75001),
('C1003', 'Peter', 'Kanagawa', 'peter.parker@mail.com', '9969834567', '2F ikenobecho', 171),
('C1004', 'Jackson', 'Tokyo', 'Jackson@gmail.com', '7765834567', '24-2. Sendagaya', 8429),
('C1005', 'Jack', 'Lake Buena Vista', 'Jack@gmail.com', '8876345678', '1520 E Buena Vista Drive', 32830);

-- Insert data into Product table
INSERT INTO Product (product_id, product_name, category, sub_category, original_price, selling_price, stock) VALUES
('P102', 'Chair', 'furniture', 'Chairs', 20000.00, 15000.00, 10),
('P103', 'Laptop', 'Electronics', 'computer', 60000.00, 55000.00, 10),
('P104', 'Smartphone', 'Electronics', 'phone', 45000.00, 40000.00, 10),
('P105', 'Blender', 'Appliance', 'Electronics', 500.00, 450.00, 10),
('P106', 'Laptop HP', 'Electronics', 'Computers', 67200.00, 55000.99, 50);

-- Insert data into Order table
INSERT INTO order_details (order_id, customer_id, product_id, quantity, total_price, payment_mode, order_date, order_status) VALUES
(3,'C1004', 'P106', 1.0, 1000.00, 'COD', '2023-11-30', 'Pending'),
(4,'C1005', 'P102', 1.0, 20000.00, 'COD', '2023-11-30', 'Pending'),
(5,'C1003', 'P103', 1.0, 55000.00, 'COD', '2023-12-15', 'Delivered'),
(7,'C1003', 'P103', 1.0, 15000.00, 'COD', '2023-12-15', 'Delivered'),
(8,'C1006', 'P102', 1.0, 15000.00, 'COD', '2023-12-01', 'Delivered');
