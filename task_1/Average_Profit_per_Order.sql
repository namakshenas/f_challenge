SELECT
	O.Region,
    C.CustomerType,
    C.CustomerSegment,
    FLOOR(AVG(O.Profit)) AS AverageProfitPerOrder
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
