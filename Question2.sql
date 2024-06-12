SELECT CompanyName, v.Vin, v.Make, v.Model, v.Price, v.Sold
FROM Inventory
JOIN Vehicles v 
ON Inventory.Vin = v.Vin
JOIN Dealerships
ON Inventory.DealershipID = Dealerships.DealershipID 
WHERE Inventory.DealershipID = 1;