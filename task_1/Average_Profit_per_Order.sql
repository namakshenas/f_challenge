SELECT 
    C.CustomerType,
    C.CustomerSegment,
    O.Region,
    AVG(O.Profit) AS AverageProfitPerOrder
FROM 
    Orders O
JOIN 
    Customers C ON O.CustomerID = C.CustomerID
GROUP BY 
    C.CustomerType,
    C.CustomerSegment,
    O.Region
ORDER BY
    AverageProfitPerOrder DESC;
