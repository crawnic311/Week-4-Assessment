--Artist Table
--Problem 1
INSERT INTO artist(name)
VALUES
  ('Ruston Kelly'),
  ('311'),
  ('Penny and Sparrow')


--Problem 2
SELECT * FROM artist
ORDER BY name ASC 
LIMIT 5


--Employee Table
--Problem 1
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary'


--Problem 2
--Nancy Edwards employee_id is 2
SELECT * FROM employee
WHERE reports_to = 2


--Problem 3
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge'


--Invoice Table
--Problem 1
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA'


--Problem 2
SELECT MAX(total) FROM invoice


--Problem 3
SELECT MIN(total) FROM invoice


--Problem 4
SELECT i.invoice_id FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE (il.unit_price * i.total) > 5


--Problem 5
SELECT COUNT(DISTINCT i.invoice_id) FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE (il.unit_price * i.total) < 5 --228 orders


--Problem 6
SELECT SUM(total) FROM invoice



