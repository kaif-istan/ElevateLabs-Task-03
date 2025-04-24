-- Total number of orders per payment type
SELECT payment_type, COUNT(*) as total_orders
FROM order_payments
GROUP BY payment_type
ORDER BY total_orders DESC;

-- Join orders with customers to find customer city and order status
SELECT c.customer_city, o.order_status, COUNT(*) AS total_orders
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_city, o.order_status
ORDER BY total_orders DESC;


-- Find customers who made more than the average number of orders
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING total_orders > (
    SELECT AVG(order_count)
    FROM (
        SELECT COUNT(order_id) AS order_count
        FROM orders
        GROUP BY customer_id
    )
);

-- Average payment value per order
SELECT order_id, AVG(payment_value) AS avg_payment
FROM order_payments
GROUP BY order_id
ORDER BY avg_payment DESC
LIMIT 10;

-- Create a view to summarize revenue per product category
CREATE VIEW category_revenue AS
SELECT p.product_category_name , SUM(oi.price + oi.freight_value) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_category_name;

-- quering it
SELECT * FROM category_revenue
ORDER BY total_revenue DESC;


-- Add indexes for faster joins
CREATE INDEX idx_orders_customer ON orders(customer_id);
CREATE INDEX idx_products_product_id ON products(product_id);


-- Count reviews with missing comments
SELECT COUNT(*) AS null_comments
FROM order_reviews
WHERE review_comment_message IS NULL;



