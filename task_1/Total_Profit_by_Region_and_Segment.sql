SELECT 
    C.CustomerType,
    O.Region,
    SUM(O.Profit) AS TotalProfit
FROM 
    Orders O
JOIN 
    Customers C ON O.CustomerID = C.CustomerID
GROUP BY 
    C.CustomerSegment,
    O.Region
ORDER BY
    TotalProfit DESC;
