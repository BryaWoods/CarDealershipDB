SELECT d.CompanyName, v.Vin, v.Make, v.Model
FROM Inventory i
JOIN Vehicles v
ON i.Vin = v.Vin
JOIN Dealerships d
ON i.DealershipID = d.DealershipID
WHERE i.Vin = 444444;