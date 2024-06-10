CREATE DATABASE car_dealership;

USE car_dealership;

CREATE TABLE Dealerships(
DealershipID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
name VARCHAR(50),
CompanyName VARCHAR(50) NOT NULL,
Address VARCHAR(50),
Phone VARCHAR(12)

);
CREATE TABLE Vehicles(
Vin INT NOT NULL PRIMARY KEY,
VehicleYear INT,
Make VARCHAR(50),
Model VARCHAR(50),
VehicleType VARCHAR(50),
Color VARCHAR(50),
Odometer INT,
Price DECIMAL(10,2),
Sold BOOLEAN
);

CREATE TABLE Inventory(
DealershipID INT NOT NULL,
Vin INT NOT NULL,

PRIMARY KEY (DealershipID, Vin),
FOREIGN KEY (DealershipID) REFERENCES Dealerships(DealershipID),
FOREIGN KEY (Vin) REFERENCES Vehicles(Vin)
);

CREATE TABLE SalesContracts(
SaleContractID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
Vin INT NOT NULL,
SalesTaxAmount DECIMAL(10,2),
RecordingFee DECIMAL(10,2),
ProcessingFee DECIMAL(10,2),
Finance BOOLEAN,

FOREIGN KEY (Vin) REFERENCES Vehicles(Vin)
);

CREATE TABLE LeaseContracts(
LeaseContractID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
Vin INT NOT NULL,
ExpectedEndingValue DECIMAL(10,4),
LeaseFee DECIMAL(10,4),

FOREIGN KEY (Vin) REFERENCES Vehicles(Vin)
);


