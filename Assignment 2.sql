--Jessica Roux
--Student ID: 2317255
--Chapman Email: jroux@chapman.edu
--Course: 408-01
--Assignment 2

--Problem 1
CREATE TABLE Player(
    pID INT,
    name VARCHAR(50),
    teamName VARCHAR(50),
    PRIMARY KEY(pID)
);

--Problem 2
ALTER TABLE Player
ADD age INT;

--Problem 3
INSERT INTO Player (pID, name, teamName, age)
VALUES (1, 'Player 1', 'Team A', 23),
       (3, 'Player 3', 'Team B', 28);

INSERT INTO Player (pID, name, teamName)
VALUES (2, 'Player 2', 'Team A'),
       (4, 'Player 4', 'Team B');

--Problem 4
DELETE FROM Player
WHERE pID = 2;

--Problem 5
UPDATE Player
SET age = 25
WHERE age IS NULL;

--Problem 6
SELECT COUNT(*), AVG(age) AS average
FROM Player;

--Problem 7
DROP TABLE Player;

--Problem 8
SELECT BillingCountry, AVG(Total) AS average
FROM Invoice
WHERE BillingCountry = 'Brazil';

--Problem 9
SELECT BillingCity, BillingCountry, AVG(Total) AS average
FROM Invoice
WHERE BillingCountry = 'Brazil'
GROUP By BillingCity;

--Problem 10
SELECT a.Title, t.AlbumID, COUNT(t.AlbumID) AS count
FROM Track t
join Album a on t.AlbumID = a.AlbumID
GROUP BY t.AlbumId
HAVING count > 20;

--Problem 11
SELECT COUNT(InvoiceDate) AS InvoiceCount
FROM Invoice
WHERE InvoiceDate LIKE '%2010%';


--Problem 12
SELECT DISTINCT BillingCountry, COUNT(DISTINCT BillingCity)
FROM Invoice
GROUP BY BillingCountry;

--Problem 13
SELECT a.Title AS AlbumTitle, t.Name AS TrackName, mt.Name AS MediaType
FROM Track t
JOIN Album a on t.AlbumID = a.AlbumId
JOIN MediaType mt on t.MediaTypeID = mt.MediaTypeID;

--Problem 14
SELECT COUNT(*) AS SalesCount
FROM Invoice
WHERE CustomerID IN
    (SELECT CustomerID
    FROM Customer
    WHERE SupportRepID = 3);
