DROP DATABASE IF EXISTS bamazonDB;

CREATE DATABASE bamazonDB;

USE bamazonDB;

CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  item VARCHAR(10) NULL,
  department VARCHAR,
  price DECIMAL(10,2) NULL,
  quantity INT NULL,
  PRIMARY KEY (id)
);

INSERT INTO products (item, department, price, quantity)
VALUES ("banana", "produce", 2.50, 15);

INSERT INTO products (item, department, price, quantity)
VALUES ("apple", "produce", .99, 36);

INSERT INTO products (item, department, price, quantity)
VALUES ("toilet paper", "homegoods", 17.49, 75);

INSERT INTO products (item, department, price, quantity)
VALUES ("paper towels", "homegoods", 10.49, 75);

INSERT INTO products (item, department, price, quantity)
VALUES ("lemons", "produce", 1.30, 40);

INSERT INTO products (item, department, price, quantity)
VALUES ("toothbrush", "toiletries", 3.25, 75);

INSERT INTO products (item, department, price, quantity)
VALUES ("shampoo", "toiletries", 4.50, 100);

INSERT INTO products (item, department, price, quantity)
VALUES ("conditioner", "toiletries", 3.10, 100);

INSERT INTO products (item, department, price, quantity)
VALUES ("watermellon", "produce", 5.25, 45);

INSERT INTO products (item, department, price, quantity)
VALUES ("q tips", "toiletries", 3.25, 75);