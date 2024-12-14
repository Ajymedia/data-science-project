SELECT * FROM Region;
SELECT * FROM Salesorder LIMIT 500;
SELECT count(*) AS TOTAL_NUM_OF_ROWS FROM Region;
SELECT count(*) AS number_of_columns FROM Information_schema.COLUMNS;
SELECT count(*) AS number_of_columns FROM Information_schema.COLUMNS
WHERE TABLE_NAME = "Region";

-- same Details for Customers --
SELECT * FROM Customer;
SELECT * FROM Salesorder LIMIT 500;
SELECT count(*) AS TOTAL_NUM_OF_ROWS FROM Customer;
SELECT count(*) AS number_of_columns FROM Information_schema.COLUMNS;
SELECT count(*) AS number_of_columns FROM Information_schema.COLUMNS
WHERE TABLE_NAME = "Customer";

SELECT * 
FROM CUSTOMER
WHERE contactName LIKE "B%";

SELECT * FROM Customer LIMIT 20;
UPDATE Customer
SET fax = "(6) 453-3447" 
WHERE CustId = 3;
UPDATE Customer
SET Region = "Europe"
WHERE CustId = 1;
UPDATE Customer
SET Region = "North America"
WHERE CustId = 2;
UPDATE Customer
SET Region = "South America"
WHERE CustId = 3;
UPDATE Customer
SET Region = "United Kingdom"
WHERE CustId = 4;
UPDATE Customer
SET Region = "Central Europe"
WHERE CustId = 5;
UPDATE Customer
SET Region = "North Europe"
WHERE CustId = 6;
UPDATE Customer
SET Region = "East Europe"
WHERE CustId = 7;
-- for all at once--
UPDATE Customer
SET region = CASE
when custid = 3 then 'africa'
WHEN CustId =  4 THEN "UNITED KINGDOM"
WHEN CustId = 5 THEN "Central Europe"
WHEN CustId = 6 THEN "Usa"
WHEN CustId = 7 THEN "North Europe"
WHEN CustId = 8 THEN "Spain"
WHEN CustId = 9 THEN "South Europe"
WHEN CustId = 10 THEN "Uk"
END 
WHERE CustId in (3, 4, 5, 6, 7, 8, 9, 10);

UPDATE Customer
SET mobile = CASE
when custid = 1 then '090123456789'
WHEN CustId =  2 THEN "07045567991"
WHEN CustId = 3 THEN "08065456890"
WHEN CustId = 4 THEN "09045509391"
WHEN CustId = 5 THEN "09056678099"
WHEN CustId = 6 THEN "07063398311"
WHEN CustId = 7 THEN "07065459301"
WHEN CustId = 8 THEN "08045504550"
when custid = 9 then '080123456789'
WHEN CustId =  10 THEN "0804987991"
WHEN CustId = 11 THEN "09023456890"
WHEN CustId = 12 THEN "08039509391"
WHEN CustId = 13 THEN "0800678099"
WHEN CustId = 14 THEN "09055398311"
WHEN CustId = 15 THEN "08012459301"
WHEN CustId = 16 THEN "07047704550"
WHEN CustId = 17 THEN "08059978099"
WHEN CustId = 18 THEN "08062298311"
WHEN CustId = 19 THEN "09063459301"
WHEN CustId = 20 THEN "0804234443"
END 
WHERE CustId in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20);

SELECT * FROM Customer LIMIT 20;
UPDATE Customer
SET email = CASE
when custid = 1 then 'allen@yahoo.com'
WHEN CustId =  2 THEN "hassall@yahoo.com"
WHEN CustId = 3 THEN "john@yahoo.com"
WHEN CustId = 4 THEN "arndt@yahoo.com"
WHEN CustId = 5 THEN "higginbotham@yahoo.com"
WHEN CustId = 6 THEN "poland@yahoo.com"
WHEN CustId = 7 THEN "bansal@yahoo.com"
WHEN CustId = 8 THEN "ilyina@yahoo.com"
when custid = 9 then 'raghav@yahoo.com'
WHEN CustId =  10 THEN "bassols@gmail.com"
WHEN CustId = 11 THEN "jaffe@gmail.com"
WHEN CustId = 12 THEN "ray@gmail.com"
WHEN CustId = 13 THEN "benito@gmail.com"
WHEN CustId = 14 THEN "jelitto@gmail.com"
WHEN CustId = 15 THEN "richardson@gmail.com"
WHEN CustId = 16 THEN "birkby@gmail.com"
WHEN CustId = 17 THEN "jones@gmail.com"
WHEN CustId = 18 THEN "rizaldy@gmail.com"
WHEN CustId = 19 THEN "boseman@gmail.com"
WHEN CustId = 20 THEN "kane@gmail.com"
END 
WHERE CustId in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20);
SELECT * FROM Customer LIMIT 20;


-- same Details for employee --
SELECT * FROM Employee;
SELECT * FROM Salesorder LIMIT 500;
SELECT count(*) AS TOTAL_NUM_OF_ROWS FROM Employee;
SELECT count(*) AS number_of_columns FROM Information_schema.COLUMNS;
SELECT count(*) AS number_of_columns FROM Information_schema.COLUMNS
WHERE TABLE_NAME = "Employee";

-- same Details for Ordersales --
SELECT * FROM orderdetail;
SELECT * FROM orderdetail LIMIT 500;
SELECT count(*) AS TOTAL_NUM_OF_ROWS FROM orderdetail;
SELECT count(*) AS number_of_columns FROM Information_schema.COLUMNS;
SELECT count(*) AS number_of_columns FROM Information_schema.COLUMNS
WHERE TABLE_NAME = "orderdetail";

select * from salesorder JOIN orderdetail ON Salesorder.orderID = orderdetail.orderId;