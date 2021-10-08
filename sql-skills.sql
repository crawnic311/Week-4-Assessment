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