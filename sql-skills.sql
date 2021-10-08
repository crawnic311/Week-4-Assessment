--Part 1 SQL Skills
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


--JOIN Queries (Various tables)
--Problem 1
SELECT * FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE il.unit_price > .99


--Problem 2
SELECT i.invoice_date, c.first_name, c.last_name, i.total FROM invoice i
JOIN customer c ON c.customer_id = i.customer_id


--Problem 3
SELECT c.first_name "Customer", c.last_name "Customer", e.first_name "Employee", e.last_name "Employee" FROM customer c
JOIN employee e ON e.employee_id = c.support_rep_id


--Problem 4
SELECT a.title "Album", art.name "Artist" FROM album a
JOIN artist art ON art.artist_id = a.artist_id


--Extra Credit
--SQL
--Artist Table
--Problem 1
SELECT * FROM artist
ORDER BY name DESC
LIMIT 10


--Problem 2
SELECT * FROM artist
WHERE name LIKE 'Black%'


--Problem 3
SELECT * FROM artist
WHERE name LIKE '%Black%'


--Emplyee Table
--Problem 1
SELECT MIN(birth_date) FROM employee


--Problem 2
SELECT MAX(birth_date) FROM employee


--Invoice Table
--Problem 1
SELECT COUNT(total) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ')


--Problem 2
SELECT AVG(total) FROM invoice


--More Join Queries
--Problem 1
SELECT pt.playlist_track_id FROM playlist_track pt
JOIN playlist p ON p.playlist_id = pt.playlist_id
WHERE name = 'Music'


--Problem 2
SELECT t.name FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
WHERE pt.playlist_id = 5


--Problem 3
SELECT t.name "Track Names", p.name "Playlist Name" FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
JOIN playlist p ON p.playlist_id = pt.playlist_id


--Problem 4
SELECT t.name, a.title FROM track t
JOIN genre g ON g.genre_id = t.genre_id
JOIN album a ON a.album_id = t.album_id
WHERE g.name = 'Alternative' OR g.name = 'Punk'

