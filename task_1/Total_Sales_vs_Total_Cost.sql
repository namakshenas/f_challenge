SELECT
	O.Region,
	C.CustomerSegment,
    C.CustomerType,
    FLOOR(SUM(O.TotalSales)) AS TotalSales,
    FLOOR(SUM(O.TotalCost)) AS TotalCost
FROM 
    Orders O
JOIN 
    Customers C ON O.CustomerID = C.CustomerID
GROUP BY 
    C.CustomerType,
    C.CustomerSegment,
    O.Region
ORDER BY
    O.Region ASC;
