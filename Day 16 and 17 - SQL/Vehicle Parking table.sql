-- only RUN if the table does not exist
-- 
CREATE TABLE IF NOT EXISTS Vehicle_Parking(
--       SERIAL ===> AUTO INCREMENT - we do not need to remember the last PK	
	PermitID SERIAL PRIMARY KEY,
--   some relationship with vehicles table
--   column_name datatype CONSTRAINTS
-- NOT NULL: Throw an error if user is not giving any value for VehicleID
-- RDBMS this is called Referential Integrity
-- REFERENCES: is for the Foreign Key = REFERENCES Tables_name(Column_name)
	VehicleID INT NOT NULL REFERENCES Vehicles(id),

	ParkingZone VARCHAR(10) DEFAULT 'Zone A' 
				CHECK (ParkingZone in ('Zone A', 'Zone B', 'Zone C')),

-- OPTIONAL as of now -- 
	IssueDate DATE DEFAULT CURRENT_DATE,
	IssueTime TIME DEFAULT CURRENT_TIME(2),
	CheckoutTime TIME DEFAULT CURRENT_TIME(2) + INTERVAL '1 hour'	
	);


INSERT INTO 
Vehicle_Parking(VehicleID, ParkingZone) VALUES
(7, 'Zone C');


SELECT * FROM vehicle_parking