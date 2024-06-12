SELECT d.CompanyName, v.Color, v.Make, v.Model
FROM Inventory i
JOIN Vehicles v
ON i.Vin = v.Vin
JOIN Dealerships d
ON i.DealershipID = d.DealershipID
WHERE v.Color LIKE 'WHITE' AND v.Make LIKE 'Rolls-Royce';

