create table Country
( Id INT PRIMARY KEY,
 Country_name VARCHAR(50),
 Population INT, 
 Area float);
 
CREATE TABLE Persons 
( Id INT PRIMARY KEY, 
 Fname VARCHAR(50),
 Lname VARCHAR(50),
 Population INT,
 Rating DECIMAL(3, 2),
 Country_Id INT, 
 Country_name VARCHAR(50));
 
 INSERT INTO Country (Id, Country_name, Population, Area) VALUES
 (1, 'India', 1380004385, 3287263),
 (2, 'USA', 331002651, 9833517),
 (3, 'China', 1439323776, 9596961),
 (4, 'Japan', 126476461, 377975),
 (5, 'Germany', 783942, 357022),
 (6, 'UK', 67886011, 243610),
 (7, 'France', 173511, 551695), 
 (8, 'Italy', 60461826, 301340),
 (9, 'Canada', 37742154, 9984670),
 (10, 'Australia', 25499884, 7692024);
 
 INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
 (1, 'Archana', 'Anil', 1380004385, 4.5, 1, 'India'),
 (2, 'John', 'Smith', 331002651, 4.7, 2, 'USA'),
 (3, 'Dang', 'Li', 1439323776, 4.6, 3, 'China'), 
 (4, 'Hiroshi', 'Taka', 126476461, 4.8, 4, 'Japan'),
 (5, 'Hans', 'Mueller', 783942, 4.9, 5, 'Germany'), 
 (6, 'James', 'Brown', 67886011, 4.4, 6, 'UK'),
 (7, 'Marie', 'Dupont', 173511, 4.3, 7, 'France'),
 (8, 'Luca', 'Rossi', 60461826, 4.2, 8, 'Italy'),
 (9, 'Emily', 'Davis', 37742154, 4.1, 9, 'Canada'),
 (10, 'Oliver', 'Wilson', 25499884, 4.0, 10, 'Australia');
 
 SELECT SUBSTRING(Country_name, 1, 3) AS FirstThreeChars FROM country;
 SELECT CONCAT(Fname, ' ', Lname) AS FullName FROM Persons;
 SELECT COUNT(DISTINCT Country_name) AS Unique_Country_Count FROM Persons;
 SELECT MAX(Population) AS Maximum_Population FROM country;
 SELECT MIN(Population) AS Minimum_Population FROM persons;
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(11, 'Anayra', NULL, 1380004385, 4.7, 1, 'India'),
(12, 'Obama', NULL, 331002651, 4.8, 2, 'USA');
SELECT COUNT(Lname) AS Last_name_Count FROM Persons; -- This query count the number of non-NULL last names in the table
SELECT COUNT(*) AS Number_Of_Rows FROM Persons;
SELECT Population FROM Country ORDER BY Id LIMIT 3;
SELECT * FROM Country ORDER BY RAND() LIMIT 3;
SELECT * FROM Persons ORDER BY Rating DESC;
SELECT Country_name, SUM(Population) AS Total_Population FROM Persons GROUP BY Country_name;
SELECT Country_name FROM Persons GROUP BY Country_name HAVING SUM(Population) > 50000;

SELECT Country_name, COUNT(*) AS Total_Persons, AVG(Rating) AS Average_Rating FROM Persons GROUP BY Country_name HAVING COUNT(*) >= 2 ORDER BY AVG(Rating) ASC;










