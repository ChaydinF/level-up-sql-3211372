-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT 
  Name, Description, Price, Type
FROM Dishes
ORDER BY Price ASC;

SELECT 
  Name, Description, Price, Type
FROM Dishes
WHERE TYPE== 'Appetizer' OR TYPE== 'Beverage'
ORDER BY Type; 

SELECT 
  Name, Description, Price, Type
FROM Dishes
WHERE TYPE!= 'Beverage'
ORDER BY Type; 

--El ORDER BY fue idea del tutor y tiene razon siempre se muestran en orden