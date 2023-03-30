CREATE DATABASE workers;
USE workers;

CREATE TABLE worker 
(	
	ID int IDENTITY(1,1) PRIMARY KEY,
	EnteringYear int,
	Position varchar(50),
	Salary int
);

CREATE TABLE Person
(
	WorkerID int,
	PersonID int IDENTITY(1,1),
	PName varchar(50),
	Surname varchar(50),
	Age int,
	FOREIGN KEY(WorkerID) REFERENCES worker(ID)
);


INSERT INTO worker (EnteringYear, Position, Salary)
VALUES (2021, 'FullStack', 730),
	   (2020, 'PHP Dev', 570),
	   (2023, 'FullStack', 870),
	   (2018, 'Cleaning', 175)

	
INSERT INTO Person(WorkerID, PName, Surname, Age)
VALUES (3,'Galina', 'Galushko', 62),
	   (1,'Vlad', 'Onyshko', 24),
	   (2,'Uryga', 'Bomjov', 37)

SELECT* FROM worker;

SELECT* FROM worker
WHERE Position='Fullstack';

SELECT* FROM worker
WHERE Salary > 500;

SELECT* FROM worker
ORDER BY Salary DESC;


SELECT* FROM Person;

SELECT* FROM Person
ORDER BY Age ASC;

SELECT MAX(Age)
FROM Person;

DROP TABLE worker;
DROP TABLE Person;

