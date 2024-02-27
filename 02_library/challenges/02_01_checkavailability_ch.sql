-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT *
FROM Books
WHERE Title = 'Dracula'

SELECT * 
FROM Loans
WHERE BookID IN (12,60,73)

SELECT BookID,COUNT(*)
FROM Loans
WHERE BookID IN (12,60,73)
AND ReturnedDate IS NULL
GROUP BY BookID

SELECT BookID,COUNT(*)
FROM Loans
WHERE BookID IN (12,60,73)
AND ReturnedDate IS NOT NULL
GROUP BY BookID


SELECT B.BookID, B.Title, B.Barcode
FROM Books B
LEFT JOIN (SELECT BookID
           FROM Loans
           WHERE BookID IN (12,60,73)
           AND ReturnedDate IS NULL) L
  ON L.BookID = B.BookID
WHERE L.BookID IS NULL
AND B.BookID IN (12,60,73)

SELECT COUNT(*)
FROM Books B
LEFT JOIN (SELECT BookID
           FROM Loans
           WHERE BookID IN (12,60,73)
           AND ReturnedDate IS NULL) L
  ON L.BookID = B.BookID
WHERE L.BookID IS NULL
AND B.BookID IN (12,60,73)

/*SOLUCION DEL PROFE*/

SELECT COUNT(DISTINCT BookID)
FROM Books
WHERE Title= 'Dracula'

SELECT COUNT(*)
FROM Loans
WHERE BookID IN (12,60,73)
AND ReturnedDate IS NULL
GROUP BY BookID

SELECT(SELECT COUNT(DISTINCT BookID)
        FROM Books
        WHERE Title= 'Dracula') -
      (SELECT COUNT(*)
        FROM Loans
        WHERE BookID IN (12,60,73)
        AND ReturnedDate IS NULL
        GROUP BY BookID) AS Disponibles
