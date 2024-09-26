SELECT 
    C.CustomerType,
    C.CustomerSegment,
    O.Region,
    SUM(O.TotalSales) AS TotalSales,
    SUM(O.TotalCost) AS TotalCost
FROM 
    Orders O
JOIN 
    Customers C ON O.CustomerID = C.CustomerID
GROUP BY 
    C.CustomerType,
    C.CustomerSegment,
    O.Region
ORDER BY
    TotalSales DESC;
