-- https://tse3.mm.bing.net/th/id/OIP.xNByn5qQcoNM6BECrDkwPgAAAA?r=0&rs=1&pid=ImgDetMain&o=7&rm=3

SELECT * FROM Vehicles;
SELECT * FROM vehicle_parking;


-- Vehicle table --- parking

SELECT
	vehicles.make_model,
	vehicles.wheels,
	Vehicle_parking.parkingzone
FROM Vehicles
INNER JOIN Vehicle_parking ON vehicles.ID = vehicle_parking.VehicleId


-- aliases
SELECT
	v.make_model,
	v.wheels,
	vp.parkingzone
FROM Vehicles v
INNER JOIN Vehicle_parking vp ON v.ID = vp.VehicleId


-- INNER JOIN VP on V
SELECT
	v.make_model,
	v.wheels,
	vp.parkingzone
FROM Vehicle_parking vp
INNER JOIN Vehicles v ON v.ID = vp.VehicleId

-----
-- LEFT -- RIGHT -- FULL OUTER
SELECT
	v.make_model,
	v.wheels,
	vp.parkingzone
FROM Vehicles v
FULL OUTER JOIN Vehicle_parking vp ON v.ID = vp.VehicleId


-- Two tables
-- table_A and table_B
-- table_A : (ida int primary) (x string )
-- table_B : (idb int primary) (y string )
-- insert 2 values into table_A, 4 values in table_B

CREATE TABLE table_A
(
	ida INT PRIMARY KEY,
	x VARCHAR(100)
);
 
CREATE TABLE table_B
(
	idb INT PRIMARY KEY,
	y VARCHAR(100)
);
 
INSERT INTO table_A (ida,x)
VALUES
	(1, 'Luqman'),
	(2, 'Aidil'),
	(7, 'Ronaldo');
 
INSERT INTO table_b (idb,y)
VALUES
	(1, 'Computer Science'),
	(2, 'Mathematics'),
	(3, 'Science'),
	(4, 'English');
 
SELECT * FROM table_A


-- INNER JOIN --
SELECT 
	a.ida, 
	a.x, 
	b.idb,
	b.y
FROM table_A a
INNER JOIN table_B b ON a.ida = b.idb;


-- LEFT JOIN --
SELECT 
	a.ida, 
	a.x, 
	b.idb,
	b.y
FROM table_A a
LEFT JOIN table_B b ON a.ida = b.idb;


-- RIGHT JOIN --
SELECT 
	a.ida, 
	a.x, 
	b.idb,
	b.y
FROM table_A a
RIGHT JOIN table_B b ON a.ida = b.idb;


-- FULL OUTER JOIN --
SELECT 
	a.ida, 
	a.x, 
	b.idb,
	b.y
FROM table_A a
FULL OUTER JOIN table_B b ON a.ida = b.idb;

--------------------------------
-- query that shows the make_model and the parkingZone for all vehicles, 
-- but only for the permits issues in Zone B
SELECT
	v.make_model,
	vp.parkingzone
FROM Vehicle_parking vp
INNER JOIN Vehicles v ON v.ID = vp.vehicleID
WHERE parkingzone = 'Zone B';
 


-- query to group data by vehicles Type and count the number of permits issued 
-- for each type. Sort the final list from highest to lowest count

SELECT 
	v.Type,
    COUNT(*) AS Permit_issued
FROM Vehicles v
RIGHT JOIN vehicle_parking vp ON v.ID = vp.VehicleID
GROUP BY v.Type
ORDER BY Permit_issued DESC

-- More Optimized query
SELECT 
	v.Type,
    COUNT(vp.permitid) as total_permits
FROM Vehicles v
RIGHT JOIN vehicle_parking vp ON v.ID = vp.VehicleID
GROUP BY v.Type
ORDER BY total_permits DESC


-----------------------------
-- Query Optimization
-- queries that fetch only the relevant data
-- which means, lesser time in fetching, downloading
-- lesser the bulk/size of requests -- lesser request load to the server
-- saving money