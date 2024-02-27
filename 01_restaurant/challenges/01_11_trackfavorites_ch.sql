-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT *
FROM CUSTOMERS
WHERE FirstName = 'Cleo'
AND LastName = 'Goldwater'

/*42*/

SELECT *
FROM Dishes
WHERE Name = 'Quinoa Salmon Salad'

/*9*/

UPDATE Customers
SET FavoriteDish = (SELECT DishID
                    FROM Dishes
                    WHERE Name = 'Quinoa Salmon Salad')
WHERE CustomerID = 42

SELECT C.CustomerID,	C.FirstName,  C.LastName, D.Name
FROM CUSTOMERS C
JOIN Dishes D
  ON D.DishID = C.FavoriteDish
WHERE C.FirstName = 'Cleo'
AND C.LastName = 'Goldwater'