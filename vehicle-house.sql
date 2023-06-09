
-- DROP DATABASE 
DROP DATABASE IF EXISTS vehicleHouse;

-- CREATE DATABASE
CREATE DATABASE vehicleHouse;

-- USE DATABASE
USE vehicleHouse;

-- CREATE DEALERSHIPS TABLE
CREATE TABLE dealerships
(
    dealership_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12)
);

-- CREATE VEHICLES TABLE
CREATE TABLE vehicles
(
    VIN INT PRIMARY KEY,
    `year` YEAR,
    make VARCHAR(15),
    type VARCHAR(15),
    color VARCHAR(15),
    odometer INT,
    price DECIMAL(9, 2),
    SOLD BOOLEAN
);

-- CREATE INVENTORY TABLE
CREATE TABLE inventory
(
    dealership_id INT,
    VIN INT,
    PRIMARY KEY (dealership_id, VIN),
    FOREIGN KEY (dealership_id) REFERENCES dealerships (dealership_id),
    FOREIGN KEY (VIN) REFERENCES vehicles (VIN)
);

-- CREATE SALES_CONTRACT TABLE
CREATE TABLE sales_contracts
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    VIN INT,
    `date` DATE,
    clientName VARCHAR(30),
    clientEmail VARCHAR(40),
    recordingFee INT,
    salesTax DECIMAL(6, 2),
    FOREIGN KEY (VIN) REFERENCES vehicles (VIN)
);

-- CREATE LEASE_CONTRACTS TABLE
CREATE TABLE lease_contracts
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    `date` DATE,
    clientName VARCHAR(30),
    clientEmail VARCHAR(40),
    VIN INT,
    FOREIGN KEY (VIN) REFERENCES vehicles (VIN)
);

-- Populate Each table

-- Populate Dealerships table
INSERT INTO dealerships (`name`, address, phone)
VALUES ('Tokyo-Car-House', 'Omotesando, Tokyo', '111-111-1111');

INSERT INTO dealerships (`name`, address, phone)
VALUES ('Osaka-Car-House', 'Kuromonm, Osaka', '222-222-2222');

INSERT INTO dealerships (`name`, address, phone)
VALUES ('Berlin-Auto-Haus', 'AlexanderPlaz, Berlin', '123-456-7890');

INSERT INTO dealerships (`name`, address, phone)
VALUES ('Bayern-Auto-Haus', 'Max-Planck-str, Munich', '987-654-3210');

-- Populate Vehicles table

-- GERMAN CARS 
INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (1, 2022, 'Mercedes', 'Sedan', 'Black', 5000, 50000.00, FALSE);

INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (2, 2021, 'BMW', 'SUV', 'White', 10000, 60000.00, FALSE);

INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (3, 2023, 'Audi', 'Convertible', 'Red', 2000, 80000.00, FALSE);

INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (4, 2021, 'Volkswagen', 'Hatchback', 'Silver', 8000, 35000.00, FALSE);

INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (5, 2022, 'Porsche', 'Sports Car', 'Blue', 3000, 120000.00, FALSE);

INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (6, 2022, 'Mercedes', 'SUV', 'Gray', 5000, 65000.00, FALSE);

INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (7, 2023, 'Audi', 'Sedan', 'White', 2000, 55000.00, FALSE);

INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (8, 2021, 'BMW', 'Convertible', 'Red', 10000, 70000.00, FALSE);

INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (9, 2022, 'Mercedes', 'Hatchback', 'Silver', 6000, 40000.00, FALSE);

INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (10, 2023, 'Porsche', 'SUV', 'Black', 3000, 90000.00, FALSE);


-- JAPANESE CARS 

INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (11, 2022, 'Toyota', 'Sedan', 'Blue', 5000, 30000.00, FALSE);

INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (12, 2021, 'Honda', 'SUV', 'Silver', 10000, 40000.00, True);

INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (13, 2023, 'Toyota', 'SUV', 'Black', 2000, 45000.00, FALSE);

INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (14, 2022, 'Honda', 'Hatchback', 'Red', 5000, 25000.00, FALSE);

INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (15, 2021, 'Nissan', 'Sedan', 'White', 8000, 35000.00, FALSE);

INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (16, 2023, 'Toyota', 'SUV', 'Gray', 4000, 40000.00, FALSE);

INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (17, 2022, 'Honda', 'Sedan', 'Black', 6000, 30000.00, FALSE);

INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (18, 2021, 'Nissan', 'Hatchback', 'Red', 7000, 25000.00, FALSE);

INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (19, 2022, 'Toyota', 'Sedan', 'White', 3000, 35000.00, FALSE);

INSERT INTO vehicles (VIN, `year`, make, `type`, color, odometer, price, SOLD)
VALUES (20, 2023, 'Honda', 'SUV', 'Silver', 5000, 45000.00, FALSE);


-- Populate the inventory table

-- CARS IN 'TOKYO-CAR-HOUSE'
INSERT INTO inventory (dealership_id, VIN)
VALUES (4, 1);

INSERT INTO inventory (dealership_id, VIN)
VALUES (4, 2);

INSERT INTO inventory (dealership_id, VIN)
VALUES (4, 3);

INSERT INTO inventory (dealership_id, VIN)
VALUES (4, 4);

INSERT INTO inventory (dealership_id, VIN)
VALUES (4, 5);

-- CARS IN 'OSAKA-CAR-HOUSE'
INSERT INTO inventory (dealership_id, VIN)
VALUES (3, 6);

INSERT INTO inventory (dealership_id, VIN)
VALUES (3, 7);

INSERT INTO inventory (dealership_id, VIN)
VALUES (3, 8);

INSERT INTO inventory (dealership_id, VIN)
VALUES (3, 9);

INSERT INTO inventory (dealership_id, VIN)
VALUES (3, 10);

-- CARS IN 'BERLIN-AUTO-HAUS'
INSERT INTO inventory (dealership_id, VIN)
VALUES (2, 11);

INSERT INTO inventory (dealership_id, VIN)
VALUES (2, 12);

INSERT INTO inventory (dealership_id, VIN)
VALUES (2, 13);

INSERT INTO inventory (dealership_id, VIN)
VALUES (2, 14);

INSERT INTO inventory (dealership_id, VIN)
VALUES (2, 15);

-- CARS IN 'BAYERN-AUTO-HAUSE'
INSERT INTO inventory (dealership_id, VIN)
VALUES (1, 16);

INSERT INTO inventory (dealership_id, VIN)
VALUES (1, 17);

INSERT INTO inventory (dealership_id, VIN)
VALUES (1, 18);

INSERT INTO inventory (dealership_id, VIN)
VALUES (1, 19);

INSERT INTO inventory (dealership_id, VIN)
VALUES (1, 20);


-- populate the sales_contracts table

INSERT INTO sales_contracts (VIN, `date`, clientName, clientEmail, recordingFee, salesTax)
VALUES (1, '2023-06-01', 'Max Mustermann', 'max@example.com', 100, 0.08);

INSERT INTO sales_contracts (VIN, `date`, clientName, clientEmail, recordingFee, salesTax)
VALUES (2, '2023-06-02', 'Laura Schmidt', 'laura@example.com', 150, 0.08);

INSERT INTO sales_contracts (VIN, `date`, clientName, clientEmail, recordingFee, salesTax)
VALUES (3, '2023-06-03', 'Hans Müller', 'hans@example.com', 200, 0.08);

INSERT INTO sales_contracts (VIN, `date`, clientName, clientEmail, recordingFee, salesTax)
VALUES (4, '2023-06-04', 'Lisa Maier', 'lisa@example.com', 250, 0.08);

INSERT INTO sales_contracts (VIN, `date`, clientName, clientEmail, recordingFee, salesTax)
VALUES (5, '2023-06-05', 'Markus Schneider', 'markus@example.com', 300, 0.08);

INSERT INTO sales_contracts (VIN, `date`, clientName, clientEmail, recordingFee, salesTax)
VALUES (11, '2023-06-01', 'Sophie Fischer', 'sophie@example.com', 120, 0.08);

INSERT INTO sales_contracts (VIN, `date`, clientName, clientEmail, recordingFee, salesTax)
VALUES (12, '2023-06-02', 'Jonas Weber', 'jonas@example.com', 170, 0.08);

INSERT INTO sales_contracts (VIN, `date`, clientName, clientEmail, recordingFee, salesTax)
VALUES (13, '2023-06-03', 'Emma Wagner', 'emma@example.com', 220, 0.08);

INSERT INTO sales_contracts (VIN, `date`, clientName, clientEmail, recordingFee, salesTax)
VALUES (14, '2023-06-04', 'Felix Becker', 'felix@example.com', 270, 0.08);

INSERT INTO sales_contracts (VIN, `date`, clientName, clientEmail, recordingFee, salesTax)
VALUES (15, '2023-06-05', 'Lena Hoffmann', 'lena@example.com', 320, 0.08);



-- populate the lease_contracts table
INSERT INTO lease_contracts (`date`, clientName, clientEmail, VIN)
VALUES ('2023-06-01', 'Sara Schmidt', 'sara@example.com', 6);

INSERT INTO lease_contracts (`date`, clientName, clientEmail, VIN)
VALUES ('2023-06-02', 'Paul Becker', 'paul@example.com', 7);

INSERT INTO lease_contracts (`date`, clientName, clientEmail, VIN)
VALUES ('2023-06-03', 'Julia Wagner', 'julia@example.com', 8);

INSERT INTO lease_contracts (`date`, clientName, clientEmail, VIN)
VALUES ('2023-06-04', 'Thomas Fischer', 'thomas@example.com', 9);

INSERT INTO lease_contracts (`date`, clientName, clientEmail, VIN)
VALUES ('2023-06-05', 'Anna Keller', 'anna@example.com', 10);

INSERT INTO lease_contracts (`date`, clientName, clientEmail, VIN)
VALUES ('2023-06-01', 'Sophia Weber', 'sophia@example.com', 16);

INSERT INTO lease_contracts (`date`, clientName, clientEmail, VIN)
VALUES ('2023-06-02', 'Liam Müller', 'liam@example.com', 17);

INSERT INTO lease_contracts (`date`, clientName, clientEmail, VIN)
VALUES ('2023-06-03', 'Emma Wagner', 'emma@example.com', 18);

INSERT INTO lease_contracts (`date`, clientName, clientEmail, VIN)
VALUES ('2023-06-04', 'Noah Becker', 'noah@example.com', 19);

INSERT INTO lease_contracts (`date`, clientName, clientEmail, VIN)
VALUES ('2023-06-05', 'Mia Hoffmann', 'mia@example.com', 20);


-- Queries

-- GET ALL DEALERSHIPS 
SELECT * FROM DEALERSHIPS;

-- FIND ALL VEHICLES FOR A SPECIFIC DEALERSHIP
SELECT D.DEALERSHIP_ID
	, D.NAME
	, V.VIN 
	,V.MAKE
	, V.TYPE
	, V.YEAR
	, V.COLOR
	, V.ODOMETER
FROM DEALERSHIPS AS D
JOIN INVENTORY AS I 
ON I.DEALERSHIP_ID = D.DEALERSHIP_ID
JOIN VEHICLES AS V
ON I.VIN = V.VIN
WHERE D.NAME = 'Tokyo-Car-House';

-- FIND A CAR BY VIN
SELECT * FROM VEHICLES 
WHERE VIN = 3;

-- FIND THE DEALERSHIP WHERE A CERTAIN CAR IS LOCATED, BY VIN
SELECT D.DEALERSHIP_ID
		, D.NAME 
		,D.ADDRESS
		, D.PHONE
FROM DEALERSHIPS AS D
JOIN INVENTORY AS I
ON D.DEALERSHIP_ID = I.DEALERSHIP_ID
WHERE I.VIN = 3;

-- FIND ALL DEALERSHIPS THAT HAVE A CERTAIN CAR TYPE (SEDAN)
SELECT D.DEALERSHIP_ID, D.NAME ,D.ADDRESS, D.PHONE
FROM DEALERSHIPS AS D
JOIN INVENTORY AS I
ON D.DEALERSHIP_ID = I.DEALERSHIP_ID
JOIN VEHICLES AS V
ON I.VIN = V.VIN
WHERE V.TYPE = 'SEDAN';

-- GET ALL SALES INFORMATION FOR A SPECIFIC DEALER FOR A SPECIFIC DATE RANGE (SALES CONTRACT)
SELECT D.DEALERSHIP_ID, D.NAME ,D.ADDRESS, D.PHONE, V.SOLD
FROM DEALERSHIPS AS D
JOIN INVENTORY AS I
ON D.DEALERSHIP_ID = I.DEALERSHIP_ID
JOIN VEHICLES AS V
ON I.VIN = V.VIN
JOIN SALES_CONTRACTS AS S
ON S.VIN = I.VIN
WHERE S.DATE BETWEEN '2023-06-03' AND '2023-06-05';

-- GET ALL SALES INFORMATION FOR A SPECIFIC DEALER FOR A SPECIFIC DATE RANGE (LEASE CONTRACTS)
SELECT D.DEALERSHIP_ID, D.NAME ,D.ADDRESS, D.PHONE, V.SOLD
FROM DEALERSHIPS AS D
JOIN INVENTORY AS I
ON D.DEALERSHIP_ID = I.DEALERSHIP_ID
JOIN VEHICLES AS V
ON I.VIN = V.VIN
JOIN LEASE_CONTRACTS AS L
ON L.VIN = I.VIN
WHERE L.DATE BETWEEN '2023-06-03' AND '2023-06-05';