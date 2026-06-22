CREATE TABLE IF NOT EXISTS Vehicle_Parking(
	PermitID SERIAL PRIMARY KEY,
	VehicleID INT NOT NULL REFERENCES Vehicles(id),

	ParkingZOne VARCHAR(10) DEFAULT 'Zone A' 
				CHECK (ParkingZone in ('Zone A', 'Zone B', 'Zone C')),

	IssueDate DATE DEFAULT CURRENT_DATE,
	
	IssueTime TIME DEFAULT CURRENT_TIME(2),
	
	CheckoutTime TIME DEFAULT CURRENT_TIME(2) + INTERVAL '1 hour'
);

INSERT INTO
Vehicle_Parking(VehicleID, ParkingZone) VALUES
(7, 'Zone C'),
(1, 'Zone A'),
(2, 'Zone B'),
(3, 'Zone C'),
(4, 'Zone A'),
(5, 'Zone B'),
(6, 'Zone C'),
(8, 'Zone A');

INSERT INTO
Vehicle_Parking(VehicleID, ParkingZone) VALUES
(5, 'Zone B');

DELETE FROM Vehicle_Parking
WHERE permitid = 1;
SELECT * FROM Vehicle_Parking;

INSERT INTO 
Vehicle_Parking(VehicleID, ParkingZone) VALUES
(3, 'Zone C'),
(4, 'Zone B'),
(1, 'Zone C'),
(5, 'Zone C'),
(2, 'Zone A'),
(1, 'Zone B'),
(3, 'Zone C'),
(2, 'Zone B'),
(7, 'Zone A'),
(6, 'Zone B'),
(5, 'Zone C'),
(1, 'Zone C');

SELECT *
FROM vehicle_parking
WHERE ParkingZone = 'Zone A';

SELECT *
FROM vehicles
WHERE wheels < 4;

SELECT *
FROM vehicles
WHERE type = 'Sport' AND doors = 2;

SELECT *
FROM vehicles
WHERE type = 'Motorcycle' OR type = 'Race';

SELECT *
FROM vehicles
WHERE type IN ('Sedan', 'Sport', 'Motorcycle');

SELECT *
FROM vehicle_parking
WHERE VehicleID BETWEEN 2 AND 5;

SELECT *
FROM vehicles
WHERE make_model LIKE '%Honda%';

SELECT *
FROM vehicles
ORDER BY make_model DESC

SELECT *
FROM vehicles
LIMIT 5;

SELECT wheels, doors,
		wheels * doors as product
FROM vehicles;

SELECT wheels, doors,
		doors / wheels as product2
FROM vehicles;

--add new things to table
-- ALTER TABLE vehicles
-- ADD COLUMN product INT GENERATED ALWAYS AS () STORED;

SELECT COUNT (*) AS total_permits
FROM vehicle_parking;

SELECT 
	SUM (doors) AS sum_doors,
	SUM (wheels) AS sum_wheels
FROM vehicles;

SELECT 
	COUNT(*) AS total_vehicles,
	SUM(doors) AS sum_doors,
	SUM(wheels) AS sum_wheels,
	ROUND(AVG(wheels), 2) AS avg_wheels,
	MIN(wheels) AS min_wheels,
	MAX(wheels) AS max_wheels
FROM vehicles;

SELECT 
	parkingzone,
	COUNT(*) as total_permits,
	COUNT(VehicleID) as total_IDs,
	AVG(VehicleID) as agv_IDs
FROM vehicle_parking
GROUP BY parkingzone;

SELECT 
	vehicleid, parkingzone,
	COUNT(*) as times_parked
FROM vehicle_parking
GROUP BY VehicleID, parkingzone
ORDER BY VehicleID;

SELECT
	COUNT(type) as total_types
FROM vehicles;

SELECT
	make_model, type,
	COUNT(*) as total_cars
FROM vehicles
GROUP BY type, make_model
ORDER BY type;

SELECT
	type,
	COUNT(*) as total_cars
FROM vehicles
GROUP BY type
HAVING COUNT(*) > 2
ORDER BY type;


SELECT *
FROM vehicle_parking;

