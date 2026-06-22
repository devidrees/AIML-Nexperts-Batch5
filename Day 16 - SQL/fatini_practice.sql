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