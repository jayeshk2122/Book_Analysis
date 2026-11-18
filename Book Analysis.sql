--  Display a complete list of every order placed, showing the customer's full name, their city, the book title they bought, and the order date.*/

SELECT c.full_name , c.city , b.title , o.order_date
FROM Orders o
INNER JOIN Customers c ON c.customer_id = o.customer_id
INNER JOIN Books b ON O.book_id = B.book_id ; 


-- Find all customers who signed up on the website but have never placed an order so the marketing team can send them a discount coupon */ 

SELECT c.customer_id,  c.full_name , c.city , c.signup_date
FROM Customers c
LEFT JOIN Orders o  ON c.customer_id = o.customer_id 
WHERE o.order_id IS NULL;

--Retrieve the title, genre, and stock quantity of all books that have fewer than 5 copies left in stock so the warehouse manager knows what to reorder. */ 


SELECT b.title , b.genre , b.stock_quantity 
FROM Books b 
WHERE b.stock_quantity < 5;


-- •  List the customer's name, book title, and quantity ordered for all purchases made exclusively by customers living in Delhi. */

SELECT c.full_name , b.title , o.quantity 
FROM Orders o  
INNER JOIN Customers C  ON c.customer_id = o.customer_id
INNER JOIN Books b ON b.book_id = o.book_id
WHERE c.city = 'Delhi' ; 

-- Show the order ID, customer's full name, book title, and book price for all orders where the individual book price is greater than ₹450.*/

SELECT o.order_id , c.full_name , b.title , b.price 
FROM Books b 
INNER JOIN Orders o ON o.book_id = b.book_id
INNER JOIN Customers c ON c.customer_id = o.customer_id
WHERE price > 450 ;