SELECT *
FROM SalesContracts s
LEFT JOIN Inventory i
ON s.Vin = i.Vin
JOIN Dealerships d
ON i.DealershipID = d.DealershipID
WHERE i.DealershipID = 3 AND SaleDate BETWEEN '2022-01-15' AND 2023-02-18;