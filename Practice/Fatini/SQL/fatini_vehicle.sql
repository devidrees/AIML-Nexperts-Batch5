CREATE TABLE Vehicles (
	ID INT PRIMARY KEY,
	Make_Model VARCHAR (100),
	Wheels INT DEFAULT 4,
	Doors INT DEFAULT 4,
	Type VARCHAR(100)
	);

SELECT *
FROM Vehicles;

SELECT id, Make_Model, Wheels
FROM Vehicles;

INSERT INTO
Vehicles(id, make_model, wheels, doors, type) VALUES
(1, 'Ford Focus', 4, 4, 'Sedan'),
(2, 'Tesla Roadster', 4, 4, 'Sport'),
(3, 'Kawasaki Ninja', 2, 0, 'Motorcycle'),
(4, 'Mclaren Formula 1', 4, 0, 'Race'),
(5, 'Tesla S', 4, 4, 'Sedan');

INSERT INTO
Vehicles(id, make_model, wheels, doors, type) VALUES
(7, 'Honda Civic R', 4, 2, 'Sedan');

INSERT INTO
Vehicles(id, make_model, wheels, doors, type) VALUES
(8, 'Porche', 4, 2, 'Sport');

INSERT INTO
Vehicles(id, make_model, doors, wheels) VALUES
(6, 'Mclaren S', 4, 4);

UPDATE Vehicles
SET type = 'Sport'
WHERE make_model = 'Mclaren S';

DELETE FROM Vehicles
WHERE id = 7;
SELECT * FROM Vehicles;