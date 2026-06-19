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
(7, 'Zone C');

SELECT * FROM vehicle_parking