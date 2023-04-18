-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
  order_id INT NOT NULL PRIMARY KEY,
  person_id INT NOT NULL,
  product_name VARCHAR(50) NOT NULL,
  product_price DECIMAL(10, 2) NOT NULL,
  quantity INT NOT NULL
);

-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.
INSERT INTO orders (order_id, person_id, product_name, product_price, quantity)
VALUES (1, 1, 'Shirt', 25.00, 2);

INSERT INTO orders (order_id, person_id, product_name, product_price, quantity)
VALUES (2, 2, 'Pants', 35.00, 1);

INSERT INTO orders (order_id, person_id, product_name, product_price, quantity)
VALUES (3, 1, 'Shoes', 50.00, 1);

INSERT INTO orders (order_id, person_id, product_name, product_price, quantity)
VALUES (4, 3, 'Socks', 5.00, 5);

INSERT INTO orders (order_id, person_id, product_name, product_price, quantity)
VALUES (5, 2, 'T-Shirt', 15.00, 3);
-- Select all the records from the orders table.
SELECT * FROM orders;

-- Calculate the total number of products ordered.
SELECT SUM(quantity)  AS total_products_ordered FROM orders;

-- Calculate the total order price.
SELECT SUM(product_price) AS total_price FROM orders;

-- Calculate the total order price by a single person_id.
SELECT person_id, SUM(product_price * quantity) AS total_order_price FROM orders GROUP BY person_id;
