-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

/*SELECT  Pedidos, CustomerID, FirstName, LastName, Email
FROM (SELECT COUNT (OrderID) Pedidos, C.CustomerID, C.FirstName, C.LastName, C.Email
      FROM ORDERS O
      INNER JOIN Customers C
          ON C.CustomerID = O.CustomerID
      GROUP BY O.CustomerID)    
ORDER BY Pedidos DESC   
LIMIT 5*/

SELECT COUNT (O.OrderID) Pedidos, C.CustomerID, C.FirstName, C.LastName, C.Email
FROM ORDERS O
INNER JOIN Customers C
    ON C.CustomerID = O.CustomerID
GROUP BY O.CustomerID 
HAVING Pedidos >= 15
ORDER BY Pedidos DESC      




SELECT COUNT (OrderID) CONTEO, O.CustomerID/*, C.FirstName, C.LastName, C.Email*/
FROM ORDERS O
INNER JOIN Customers C
    ON C.CustomerID = O.CustomerID
GROUP BY O.CustomerID



