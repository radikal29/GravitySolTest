/************************************ TEST GravitiSolutions By AH *************************************/
--1.- Create a table named salesperson, where it can store the user data: Name, Last Name, Email and Date of Birth.

CREATE TABLE salesperson(
	PersonID	INT IDENTITY(1,1) PRIMARY KEY,
	Name		VARCHAR(50) NOT NULL,
	LastName	VARCHAR(50) NOT NULL,
	Email		VARCHAR(30) NOT NULL,
	Birthday	DATETIME NULL
)
GO

--*******************************************************************************************************
--2.- Insert a 5 sellers with dummy data.

INSERT INTO salesperson VALUES ('Agustin', 'Hernandez', 'aghernandez@gmail.com', '19800729')
INSERT INTO salesperson VALUES ('Erik', 'Lopez', 'erik.lopez@gravitysol.com', '19800101')
INSERT INTO salesperson VALUES ('Hector', 'Salinas', 'salpen@gravitysol.com', '19800101')
INSERT INTO salesperson VALUES ('Madhu', 'Raju', 'madhu.raju@gravitysol.com', '19800101')
INSERT INTO salesperson VALUES ('Michael', 'Nawary', 'michael.nawary@gravitysol.com', '19800101')
GO
-- SELECT * FROM salesperson

--*******************************************************************************************************
--3.- Create a table named sales (must be related to the salesperson) that will store sales data by salesperson: 
--	Item, Quantity, Price, Cost, Date & Time of Sale.

CREATE TABLE sales(
	Item		INT NOT NULL,
	Quantity	INT NOT NULL,
	Price		FLOAT NOT NULL,
	Cost		FLOAT NOT NULL,
	DateofSale	DATETIME NOT NULL,
	PersonID	INT FOREIGN KEY REFERENCES salesperson(PersonID),
)
GO

--*******************************************************************************************************
--4.- Insert 12 dummy sales for each salesperson.
--NOTE 1: 12 sales must correspond to one for each month of the year 2013 From January to December 2013.
--NOTE 2: all data entered is fictitious, we give you the creative license; 
--just ensure that the data entered matches the parameters provided.

INSERT INTO sales VALUES (101, 1, 59.99,  .99, '20130101 10:10', 1)
INSERT INTO sales VALUES (105, 10, 9.99,  .99, '20130201 10:10', 1)
INSERT INTO sales VALUES (141, 2, 5.99,  .99, '20130301 10:10', 1)
INSERT INTO sales VALUES (101, 5, 59.99,  .99, '20130401 10:10', 1)
INSERT INTO sales VALUES (147, 1, 10.99,  .99, '20130501 10:10', 1)
INSERT INTO sales VALUES (101, 5, 59.99,  .99, '20130601 10:10', 1)
INSERT INTO sales VALUES (156, 1, 22.99,  .99, '20130701 10:10', 1)
INSERT INTO sales VALUES (101, 4, 59.99,  .99, '20130801 10:10', 1)
INSERT INTO sales VALUES (123, 1, 45.99,  .99, '20130901 10:10', 1)
INSERT INTO sales VALUES (101, 1, 59.99,  .99, '20131001 10:10', 1)
INSERT INTO sales VALUES (197, 1, 15.99,  .99, '20131101 10:10', 1)
INSERT INTO sales VALUES (105, 2, 9.99,  .99, '20131201 10:10', 1)

INSERT INTO sales VALUES (141, 1, 5.99,  .99, '20130101 10:10', 2)
INSERT INTO sales VALUES (105, 10, 19.99,  .99, '20130201 10:10', 2)
INSERT INTO sales VALUES (141, 2, 54.99,  .99, '20130301 10:10', 2)
INSERT INTO sales VALUES (152, 5, 4.99,  .99, '20130401 10:10', 2)
INSERT INTO sales VALUES (147, 1, 7.99,  .99, '20130501 10:10', 2)
INSERT INTO sales VALUES (153, 5, 4.99,  .99, '20130601 10:10', 2)
INSERT INTO sales VALUES (156, 1, 53.99,  .99, '20130701 10:10', 2)
INSERT INTO sales VALUES (147, 4, 1.99,  .99, '20130801 10:10', 2)
INSERT INTO sales VALUES (123, 1, 89.99,  .99, '20130901 10:10', 2)
INSERT INTO sales VALUES (159, 1, 75.99,  .99, '20131001 10:10', 2)
INSERT INTO sales VALUES (197, 1, 215.99,  .99, '20131101 10:10', 2)
INSERT INTO sales VALUES (182, 2, 19.99,  .99, '20131201 10:10', 2)

INSERT INTO sales VALUES (101, 1, 56.99,  .99, '20130101 10:10', 3)
INSERT INTO sales VALUES (105, 10, 97.99,  .99, '20130201 10:10', 3)
INSERT INTO sales VALUES (147, 2, 1.99,  .99, '20130301 10:10', 3)
INSERT INTO sales VALUES (141, 5, 2.99,  .99, '20130401 10:10', 3)
INSERT INTO sales VALUES (147, 1, 99,  .99, '20130501 10:10', 3)
INSERT INTO sales VALUES (153, 5, 3.99,  .99, '20130601 10:10', 3)
INSERT INTO sales VALUES (156, 1, 4.99,  .99, '20130701 10:10', 3)
INSERT INTO sales VALUES (141, 4, 5.99,  .99, '20130801 10:10', 3)
INSERT INTO sales VALUES (123, 1, 6.99,  .99, '20130901 10:10', 3)
INSERT INTO sales VALUES (159, 1, 598.99,  .99, '20131001 10:10', 3)
INSERT INTO sales VALUES (147, 1, 1.99,  .99, '20131101 10:10', 3)
INSERT INTO sales VALUES (197, 2, 8.99,  .99, '20131201 10:10', 3)

INSERT INTO sales VALUES (141, 1, 2.99,  .99, '20130101 10:10', 4)
INSERT INTO sales VALUES (141, 10, 2.99,  .99, '20130201 10:10', 4)
INSERT INTO sales VALUES (141, 2, 2.99,  .99, '20130301 10:10', 4)
INSERT INTO sales VALUES (105, 5, 9.99,  .99, '20130401 10:10', 4)
INSERT INTO sales VALUES (147, 1, 1.99,  .99, '20130501 10:10', 4)
INSERT INTO sales VALUES (153, 5, 3.99,  .99, '20130601 10:10', 4)
INSERT INTO sales VALUES (156, 1, 4.99,  .99, '20130701 10:10', 4)
INSERT INTO sales VALUES (141, 4, 5.99,  .99, '20130801 10:10', 4)
INSERT INTO sales VALUES (123, 1, 6.99,  .99, '20130901 10:10', 4)
INSERT INTO sales VALUES (159, 1, 7.99,  .99, '20131001 10:10', 4)
INSERT INTO sales VALUES (197, 1, 8.99,  .99, '20131101 10:10', 4)
INSERT INTO sales VALUES (105, 2, 9.99,  .99, '20131201 10:10', 4)

INSERT INTO sales VALUES (123, 1, .99,  .99, '20130101 10:10', 5)
INSERT INTO sales VALUES (105, 10, 9.99,  .99, '20130201 10:10', 5)
INSERT INTO sales VALUES (123, 2, .99,  .99, '20130301 10:10', 5)
INSERT INTO sales VALUES (147, 5, 1.99,  .99, '20130401 10:10', 5)
INSERT INTO sales VALUES (123, 1, .99,  .99, '20130501 10:10', 5)
INSERT INTO sales VALUES (153, 5, 86.99,  .99, '20130601 10:10', 5)
INSERT INTO sales VALUES (123, 1, 45.99,  .99, '20130701 10:10', 5)
INSERT INTO sales VALUES (153, 4, 86.99,  .99, '20130801 10:10', 5)
INSERT INTO sales VALUES (123, 1, .99,  .99, '20130901 10:10', 5)
INSERT INTO sales VALUES (147, 1, 1.99,  .99, '20131001 10:10', 5)
INSERT INTO sales VALUES (197, 1, 8.99,  .99, '20131101 10:10', 5)
INSERT INTO sales VALUES (182, 2, 99.99,  .99, '20131201 10:10', 5)
GO
-- SELECT * FROM sales

--3.- Build a view where you can see the sales for each salesperson for periods of months of 2013 should be as follows.
--NOTE 1: Name for months should be 3-character abbreviation, as seen in the top row in the display above
--NOTE 2: The value of X corresponds to that salesperson sales in that month.

CREATE VIEW SalesByMonthVw
AS

SELECT Person, (Jan), (Feb), (Mar), (Apr), (May), (Jun), (Jul), (Aug), (Sep), (Oct), (Nov), (Dec)
FROM
	(SELECT P.Name + ' ' + P.LastName AS Person,
		SUBSTRING(DATENAME(mm, S.DateofSale), 1, 3) AS Month,
		S.Quantity * S.Price AS Sales
	FROM salesperson P INNER JOIN sales S
	ON	(P.PersonID = S.PersonID)
	) SourceTable
PIVOT
(SUM(SourceTable.Sales) FOR SourceTable.Month IN (Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec)) AS PivotTable
GO
-- SELECT * FROM SalesByMonthVw