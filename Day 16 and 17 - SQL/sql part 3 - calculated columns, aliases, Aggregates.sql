-- Calculated Columns and aliases

SELECT 
	wheels, 
	doors, 
	wheels * doors as product -- Calculated columns
	-- as is used for alias - or the other name
FROM Vehicles

-- you should always account for future changes
-- 

SELECT *
FROM Vehicles

-- AGGREGATE FUNCTIONS
-- COUNT, SUM, AVG, MIN, MAX

-- How many vehicles have parked in our lot untill now
SELECT COUNT(*) AS total_permits -- Count of ALL ROWS - total permits
FROM vehicle_parking

-- find the sum of all the doors and wheels across all the vehicles
SELECT 
	SUM(doors) AS sum_doors,
	SUM(wheels) AS sum_wheels
FROM vehicles;


-- aggregate table
SELECT 
	COUNT(*) AS total_vehicles,
	SUM(doors) AS sum_doors,
	SUM(wheels) AS sum_wheels,
	ROUND(AVG(wheels), 2) AS avg_wheels, -- To display only upto two decimal places
	MIN(wheels) AS min_wheels,
	MAX(wheels) AS max_wheels
FROM vehicles;

-- Operating between aggregates
SELECT 
	SUM(doors) AS sum_doors,
	SUM(wheels) AS sum_wheels,
	SUM(doors) + SUM(wheels) AS sum_doors_wheels
FROM vehicles;


-- GROUP BY -- 
-- Most basic Group by -- will only return individual groups in a column
SELECT parkingzone 
FROM Vehicle_parking
GROUP BY parkingzone
ORDER BY parkingzone;

-- more proper way
-- the number of entries present for a particular group
SELECT 
	parkingzone, 
	COUNT(*) as total_permits,
	COUNT(VehicleID) as total_IDs,
	AVG(VehicleID) as avg_IDs
FROM vehicle_parking
GROUP BY parkingzone;


-- GROUP MULTIPLE COLUMNS
-- How many times was each vehicles parked in each zone
(SELECT vehicleid, parkingzone, COUNT(*) as times_parked
FROM vehicle_parking
GROUP BY VehicleID, parkingzone
ORDER BY VehicleID)


-- tell me how many car types we have
SELECT 
	type,
	COUNT(*) AS total
FROM vehicles
GROUP BY type;
 
 
-- tell me how many cars there are in each car types that we have
SELECT
	type,
	make_model,
	COUNT(*) as total_cars
FROM vehicles
GROUP BY type, make_model
ORDER BY type;


-- FILTER GROUP using HAVING
SELECT
	type,
	COUNT(*) as total_cars
FROM vehicles
GROUP BY type
HAVING COUNT(*) > 2
ORDER BY type
-- after the counting/grouping if you want to filter the data
-- Having <condition>


-- GROUP BY HAVING in SQL 

-- SELECT <columns>, AGG(<columns>) as <alias>
-- FROM <TableName>
-- GROUP BY <CategoryColumns>
-- HAVING <condition>
-- ORDER BY <Column>


SELECT *
FROM vehicle_parking



