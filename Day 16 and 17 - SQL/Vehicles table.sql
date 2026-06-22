-- parking lot project

-- delete the vehicles tables if it exists in your database
DROP TABLE IF EXISTS Vehicles;

-- create vehicles table
CREATE TABLE Vehicles ( 
-- defining columns === column_name DataType CONSTRAINT
	ID INT PRIMARY KEY, -- data type integer
	Make_Model VARCHAR(100), -- varchar used for text
	Wheels INT DEFAULT 4, -- 
	Doors INT DEFAULT 4, 
	Type VARCHAR(100)
	);

-- Select helps us access something
SELECT * -- select all
FROM Vehicles;

-- select only a column, or a few?
SELECT id, make_model -- SQL is not Case-Sensitive
FROM Vehicles;

-- our table is empty -- let's learn insert
-- inserting multiple entries
INSERT INTO
Vehicles(id, make_model, wheels, doors, type) VALUES
(1, 'Ford Focus', 4, 4,'Sedan'),
(2,	'Tesla Roadster', 4, 2,'Sports'),
(3,	'Kawakasi Ninja', 2, 0,	'Motorcycle'),
(4,	'McLaren Formula 1', 4, 0, 'Race'),
(5,	'Tesla S', 4, 4, 'Sedan')
;

-- this is how to insert single values into the table
INSERT INTO
Vehicles(id, make_model, wheels, doors, type) VALUES
(6, 'Porche', 4, 2, 'Sports');

-- insert single values -- altered order of values inserted
INSERT INTO
Vehicles(id, make_model, wheels, type, doors) VALUES
(7, 'Honda Civic R', 4, 'Sedan', 2);

-- inserting values but with one column value (type) missing
INSERT INTO
Vehicles(id, make_model, doors, wheels) VALUES
(8,'McLaren S', 4, 4);

-- Update values in the table
-- WHERE <CONDITION> -- column_name = < >  ?
UPDATE Vehicles
SET type = 'Sports' -- target the exact column
WHERE make_model = 'McLaren S';  -- condition to target exact row


-- DELETE a ROW
DELETE FROM Vehicles
WHERE id = 8;


-- DEFAULT CONSTRAINT
-- we have defualt = 4 for wheels and doors
-- so we need not insert them
INSERT INTO
Vehicles(id, make_model, type) VALUES
(8,'McLaren S', 'Sports');


-- DELETE AN ENTIRE TABLE
--DROP TABLE Vehicles

SELECT * FROM vehicles;

