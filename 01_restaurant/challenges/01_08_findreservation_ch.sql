-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT 
  *
FROM Reservations R 
INNER JOIN Customers C
ON C.CustomerID= R.CustomerID
WHERE C.LastName LIKE 'STE%'
AND PARTYSIZE= 4
AND DATE LIKE '2022-06-14%'