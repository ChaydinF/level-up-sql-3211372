-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT *
FROM Customers
WHERE FIRSTNAME= 'Norby';


/*SELECT *
FROM Reservations
WHERE CustomerID=64
--AND Date LIKE '2022-07%';
AND Date > '2022-07-24';*/

SELECT R.*
FROM Reservations R
JOIN Customers C 
  ON C.CustomerID = R.CustomerID
WHERE C.FirstName='Norby'
AND Date > '2022-07-24';

/* 

DELETE FROM Reservations
WHERE ReservationID = 2000

borrar registros puede crear inconsistencias si
otra tabla tiene en uso el registro, lo mejor es hacer update
de uno más columnas del registro

*/

UPDATE Reservations
SET PartySize = 0
WHERE ReservationID = 2000