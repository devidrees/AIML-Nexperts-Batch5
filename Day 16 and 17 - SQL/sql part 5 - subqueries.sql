-- Sub Queries
-- Nested Query --- a query within a query


-- Which vehicles have more doors than the average vehicle door
SELECT 
	Make_Model, 
	Doors
FROM Vehicles -- where doors > 2.25
WHERE Doors > (
				SELECT ROUND(AVG(Doors),2) 
				FROM Vehicles
);

-- get the make_model of every car that is in Zone C
SELECT 
	Make_Model, 
	Type
FROM Vehicles
WHERE ID IN (
			SELECT VehicleID
			FROM Vehicle_Parking
			WHERE ParkingZone = 'Zone C'
);


SELECT * FROM Vehicles_parking;

SELECT
	v.make_model,
	vp.parkingzone
FROM vehicles v
FULL JOIN vehicle_parking vp ON v.id = vp.vehicleID
WHERE parkingzone = 'Zone C';



