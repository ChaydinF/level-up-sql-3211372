-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

SELECT * 
FROM Customers
WHERE FirstName = 'Loretta'
AND LastName = 'Hundey'

SELECT DishID, Name, Price
FROM Dishes 
WHERE Name IN ('House Salad','Mini Cheeseburgers', 'Tropical Blue Smoothie')

INSERT INTO Orders (CustomerID,OrderDate)
VALUES ((SELECT CustomerID
FROM Customers
WHERE FirstName = 'Loretta'
AND LastName = 'Hundey'), '2022-02-20 14:00:00')

SELECT *
FROM Orders
ORDER BY OrderID DESC

INSERT INTO OrdersDishes(OrderID,DishID)
VALUES (1001,4)

INSERT INTO OrdersDishes(OrderID,DishID)
VALUES (1001,7)

INSERT INTO OrdersDishes(OrderID,DishID)
VALUES (1001,20)

SELECT * 
FROM OrdersDishes
ORDER BY OrdersDishesID DESC

/*SELECT DishID, Name, Price
FROM Dishes 
WHERE Name IN ('House Salad','Mini Cheeseburgers', 'Tropical Blue Smoothie')

SELECT SUM(Price)
FROM Dishes 
WHERE Name IN ('House Salad','Mini Cheeseburgers', 'Tropical Blue Smoothie')*/

SELECT SUM(D.price)
FROM Dishes D
INNER JOIN OrdersDishes O
ON O.DishID = D.DishID
WHERE O.OrderID=1001

