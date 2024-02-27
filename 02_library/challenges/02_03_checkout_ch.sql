-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

SELECT * 
FROM BOOKS 
WHERE Barcode = 2855934983

SELECT * 
FROM BOOKS 
WHERE Barcode = 4043822646

SELECT *
FROM Patrons
WHERE FirstName = 'Jack'
AND LastName = 'Vaan'

INSERT INTO Loans (BookID, PatronID, LoanDate, DueDate)
VALUES ((SELECT BookID
        FROM BOOKS 
        WHERE Barcode = 2855934983),
        (SELECT PatronID
        FROM Patrons
        WHERE FirstName = 'Jack'
        AND LastName = 'Vaan'),
        '2022-08-25',
        '2022-09-08')

INSERT INTO Loans (BookID, PatronID, LoanDate, DueDate)
VALUES ((SELECT BookID
        FROM BOOKS 
        WHERE Barcode = 2855934983),
        (SELECT PatronID
        FROM Patrons
        WHERE FirstName = 'Jack'
        AND LastName = 'Vaan'),
        '2022-08-25',
        '2022-09-08'),
      ((SELECT BookID
        FROM BOOKS 
        WHERE Barcode = 4043822646),
        (SELECT PatronID
        FROM Patrons
        WHERE FirstName = 'Jack'
        AND LastName = 'Vaan'),
        '2022-08-25',
        '2022-09-08')

SELECT P.FirstName, P.LastName, L.* 
FROM Loans L
INNER JOIN Patrons P
  ON P.PatronID = L.PatronID
WHERE P.FirstName = 'Jack'
AND P.LastName = 'Vaan'
ORDER BY LoanID DESC

        
DELETE FROM Loans
WHERE LoanID = 2001