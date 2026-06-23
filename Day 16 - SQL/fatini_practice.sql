SELECT
	Type,
	MAX(wheels) AS max_wheels
FROM vehicles
GROUP BY Type
ORDER BY Type ASC;

SELECT 
	parkingzone,
	COUNT(*) AS total_permits
FROM vehicle_parking
GROUP BY parkingzone
ORDER BY total_permits DESC;

SELECT
	vehicleID,
	COUNT(*) AS total_parks
FROM vehicle_parking
GROUP BY vehicleID
HAVING COUNT(*) >= 2;

SELECT
	Type,
	SUM(doors) AS total_doors
FROM vehicles
GROUP BY Type
HAVING SUM(doors) > 2
ORDER BY total_doors DESC;


--------
CREATE TABLE IF NOT EXISTS table_A
	(
	idA INT PRIMARY KEY,
	x VARCHAR(100)
	);

CREATE TABLE IF NOT EXISTS table_B
	(
	idB INT PRIMARY KEY,
	y VARCHAR(100)
	);

INSERT INTO table_A (idA, x)
VALUES
    (1, 'Fatini'),
    (2, 'Nasuha');

INSERT INTO table_B (idB, y)
VALUES
    (1, 'Apple'),
    (2, 'Cake'),
    (3, 'Ice Cream'),
    (4, 'Pizza');

SELECT
	a.idA
	a.x
	b.idB
	b.y
FROM table_A a
INNER JOIN table_B b ON a.idA = b.idB;

SELECT
	a.idA
	a.x
	b.idB
	b.y
FROM table_A a
LEFT JOIN table_B b ON a.idA = b.idB;

SELECT
	a.idA
	a.x
	b.idB
	b.y
FROM table_A a
RIGHT JOIN table_B b ON a.idA = b.idB;

SELECT
	a.idA
	a.x
	b.idB
	b.y
FROM table_A a
FULL OUTER JOIN table_B b ON a.idA = b.idB;

--------


