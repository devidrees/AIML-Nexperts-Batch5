-- FILTERING with WHERE clause

-- COMPARISON OPERATORS ( =, <, >, !=)
-- Find all the Vehicles parked in zone A
SELECT * 
FROM Vehicle_Parking 
WHERE parkingzone = 'Zone A';

-- Find all the Vehicles that have less than 4 wheels
SELECT *
FROM vehicles
WHERE wheels != 4;
WHERE wheels < 4;


-- LOGICAL OPERATORS (AND, OR, NOT)
-- Find sports cars with only 2 doors - STRICT MATCH - AND
SELECT * 
FROM vehicles
WHERE type = 'Sports' AND doors = 2;
 
-- Find Vehicles that are either Motorcycle or Race cars - FLEXIBLE OR
SELECT * 
FROM vehicles
WHERE type = 'Motorcycle' OR Type = 'Race';


-- SPECIAL OPERATORS 
-- Find Vehicles that are Sedans, Sports cars or Motorcycles
-- List Match
SELECT * 
FROM vehicles
WHERE type IN ('Sedan', 'Sports', 'Motorcycle')

-- Find parking permits where VechicleID between 2 and 5
-- Range Match
SELECT * 
FROM vehicle_parking
WHERE vehicleID BETWEEN 2 AND 5

SELECT *
FROM vehicle_parking
WHERE VehicleID >= 2 AND VehicleID <= 5;

-- Find any vehicles where the make/model contains word Honda
-- Pattern Match -- LIKE
-- LIKE 'Honda%' = Starts with Honda 
-- LIKE '%a' = Ends with an a
-- LIKE '%n%' = has an n anywhere in the middle

SELECT * 
FROM Vehicles
WHERE make_model LIKE '%Tesla%'


-- -----------------------------------------------------------

-- SORTING 
-- sort the vehicles aphabetically
SELECT * FROM Vehicles
ORDER BY Make_model DESC -- ASC or DESC mean Ascending or Descending order
LIMIT 3;
-- gives us the last 3 results






















 