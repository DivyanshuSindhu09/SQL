CREATE TABLE customer(
id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
email VARCHAR(150) UNIQUE NOT NULL,
city VARCHAR(100)
)

CREATE TABLE orders(
id SERIAL PRIMARY KEY,
customer_id INT REFERENCES customer(id),
amount DECIMAL(10,2),
status VARCHAR(20),
order_date DATE DEFAULT CURRENT_DATE
);

INSERT INTO customer (name, email, city) VALUES
('Divyanshu', 'divyanshu@example.com', 'Panipat'),
('Riya', 'riya@example.com', 'Delhi'),
('Karan', 'karan@example.com', 'Mumbai'),
('Aman', 'aman@example.com', 'Pune'),
('Simran', 'simran@example.com', 'Chandigarh'),
('Tanya', 'tanya@example.com', 'Jaipur'),
('Rohit', 'rohit@example.com', 'Kolkata'),
('Sneha', 'sneha@example.com', 'Bangalore');

INSERT INTO orders (customer_id, amount, status, order_date) VALUES
(1, 2000, 'Completed', '2025-08-01'),
(2, 1500, 'Completed', '2025-08-02'),
(1, 3000, 'Pending', '2025-08-03'),
(3, 1200, 'Completed', '2025-08-04'),
(4, 2500, 'Completed', '2025-08-05'),
(2, 1800, 'Pending', '2025-08-26'),
(5, 3500, 'Completed', '2025-08-07'),
(1, 1000, 'Cancelle', '2025-08-08');

SELECT COUNT(*) AS total_orders FROM orders;
SELECT SUM(amount) AS total_sales FROM orders;
SELECT AVG(amount) AS average_sales FROM orders;
SELECT MIN(amount) AS lowest_order, MAX(amount) AS max_order FROM orders;

SELECT * FROM orders;