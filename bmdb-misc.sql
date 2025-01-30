--CHAPTER 7
--Update & Delete

SELECT *
  FROM Movie

  -- insert test or dummy record to play with
INSERT INTO Movie (Title, Year, Rating, Director)
  Values ('Test', 2025, 'R', 'Test Director')

  --getting a record by ID (primary key)
SELECT *
 FROM Movie
 WHERE ID = 4;

 --update test movie to Test movie 2, year 2026
 UPDATE Movie
  SET Title = 'Test 2',
      Year = 2026
 WHERE ID = 4;

 --delete 
 DELETE Movie
 WHERE ID = 4;

 --Actor Table
 SELECT *
   FROM Actor;

INSERT INTO Actor (FirstName, LastName, Gender, Birthdate)
  VALUES ('Zooey', 'Deschanel', 'F', '1980-01-17'),
		 ('Peter', 'Dinklage','M', '1969-06-11'),
		 ('John C.', 'Reilly', 'M', '1965-05-24'),
		 ('Mary', 'Steemburgen', 'F', '1953-02-08');

INSERT INTO Actor (FirstName, LastName, Gender, Birthdate)
  VALUES ('Will', 'Ferrel', 'M', '1967-07-16');
  

--add Credits
SELECT *
  From Actor;
SELECT *
  From Movie;
-- credits
--ELF (2):
-- Will Ferrell(5) - Buddy
-- Zooey Deschanel(1) - Jovie
-- Peter Dinklage(2) - Miles Finch
-- Mary Steemburgen(4) - Emily Hobbs
--Step Brothers (1)
-- Will Ferrel(5) - Bennnan Huff
-- John C. Reilly(3) - Dale Doback
-- Mary Steemburgen(4) - Nancy Huff

INSERT INTO Credit (MovieID, ActorID, Role)
VALUES
	(2, 5, 'Buddy'),
	(2, 1, 'Jovie'),
	(2, 2, 'Miles Finch'),
	(2, 4, 'Emily Hobbs'),
	(1, 5, 'Brennen Huff'),
	(1, 3, 'Dale Doback'),
	(1, 4, 'Nancy Huff');

SELECT *
  FROM Credit

-- show credits with movie, actor, role

SELECT Title, CONCAT(FirstName, ', ', LastName) AS Actor, Role
  FROM Credit C
  JOIN Movie M ON M.id = C.MovieID
  JOIN Actor A ON A.ID = C.ActorID;

INSERT INTO Movie (Title, Year, Rating, Director)
VALUES ('Wonka', 2023, 'PG', 'Paul King'),
	   ('Willy Wonka and the Chocoalate Factory', 1971, 'G', 'Mel Stuart'),
	   ('Charlie and the Chocolate Factory', 2005, 'PG', 'Tim Burton');

SELECT *
  FROM Movie

  INSERT INTO Actor (FirstName, LastName, Gender, Birthdate)
  VALUES ('Timothee', 'Chalamet', 'M', '1995-12-27'),
         ('Tom', 'Davis', 'M', '1979-04-27'),
		 ('Olivia', 'Coleman', 'F', '1974-01-30'),
		 ('Gene', 'Wilder', 'M', '1933-06-11'),
		 ('Jack', 'Albertson', 'M', '1907-06-16'),
		 ('Peter', 'Ostrum', 'M', '1957-11-01'),
		 ('Johnny', 'Depp', 'M', '1963-06-09'),
		 ('Freddie', 'Highmore', 'M', '1992-02-14'),
		 ('David', 'Kelly', 'M', '1929-07-11');

SELECT *
  FROM Movie

SELECT *
  FROM Actor

--Credits
--Wonka(3)
-- Timothee Chalamet(6) - Willy Wonka
-- Tom Davis(7) - Bleacher
-- Olivia Coleman(8) - Mrs. Scrubitt
--Willy Wonka and the Chocolate Factory(4)
-- Gene Wilder(9) - Willy Wonka
-- Jack Albertson(10) - Grandpa Joe
-- Peter Ostrum(11) - Charlie Bucket
--Charlie and the Chocolate Factory (5)
-- Johnny Depp(12) - Willy Wonka
-- Freddie Highmore(13) - Charlie Bucket
-- David Kelly(14) - Grandpa Joe

INSERT INTO Credit (MovieID, ActorID, Role)
VALUES
	(3, 6, 'Willy Wonka'),
	(3, 7, 'Bleacher'),
	(3, 8, 'Mrs.Scrubitt'),
	(4, 9, 'Willy Wonka'),
	(4, 10, 'Grandpa Joe'),
	(4, 11, 'Charlie Bucket'),
	(5, 12, 'Willy Wonka'),
	(5, 13, 'Charlie Bucket'),
	(5, 14, 'Grandpa Joe');

	--copy the movie table into movie copy
SELECT*
  INTO MovieCopy
  FROM Movie

INSERT INTO Movie (title, year, Rating, director)
VALUES 
('Captain America: The First Avenger', 2011, 'PG-13', 'Joe Johnston'),
('Ant-Man', 2015, 'PG-13', 'Peyton Reed'),
('Iron Man', 2008, 'PG-13', 'Jon Favreau');

INSERT INTO Actor (firstName, lastName, gender, birthDate)
VALUES 
('Chris', 'Evans', 'M', '1981-06-13'),   -- Captain America
('Hayley', 'Atwell', 'F', '1982-04-05'),  -- Peggy Carter
('Tom', 'Hiddleston', 'M', '1981-02-09'); -- Loki

INSERT INTO Actor (firstName, lastName, gender, birthDate)
VALUES 
('Chris', 'Evans', 'M', '1981-06-13'),   -- Captain America
('Hayley', 'Atwell', 'F', '1982-04-05'),  -- Peggy Carter
('Tom', 'Hiddleston', 'M', '1981-02-09'), -- Loki

INSERT INTO Actor (firstName, lastName, gender, birthDate)
VALUES
('Robert', 'Downey Jr.', 'M', '1965-04-04'), -- Tony Stark / Iron Man
('Gwyneth', 'Paltrow', 'F', '1972-09-27'),  -- Virginia "Pepper" Potts
('Jeff', 'Bridges', 'M', '1949-12-04');      -- Obadiah Stane

INSERT INTO Actor (firstName, lastName, gender, birthDate)
VALUES 
('Paul', 'Rudd', 'M', '1969-04-06'),      -- Scott Lang / Ant-Man
('Evangeline', 'Lilly', 'F', '1979-08-03'),-- Hope Van Dyne / Wasp
('Michael', 'Douglas', 'M', '1944-09-25'); -- Hank Pym

INSERT INTO Actor (firstName, lastName, gender, birthDate)
VALUES 
('Hugo', 'Weaving', 'M', '1960-04-04')

SELECT *
 FROM Movie

SELECT *
  FROM Actor

--credits 
--Captain America:TFA(7)
  --Chris Evans(15) steve rogers/captain America
  --Haley Atwell(16) Peggy CArter
  --Hugo Weaving(25) Johann Schmidt/ Red Skull
--Ant-Man(8)
  --Paul Rudd(22) Scott Lang/ Ant-Man
  --Evangeline Lilly(23) Hope Van Dyne
  --Michael Douglas(24) Hank Pym
--Iron Man(9)
  --Robert Downey Jr(19) Tony Stark/ Iron Man
  --Gwyneth Paltro(20) Virginia "Pepper' Potts
  --Jeff Bridges(21) Obadiah Stane/ Iron Monger

INSERT INTO Credit (MovieID, ActorID, Role)
VALUES
	(7, 15, 'Steve Rogers/ Captain America'),
	(7, 16, 'Peggy Carter'),
	(7, 25, 'Johann Schmidt/ Red Skull'),
	(8, 22, 'Scott Lang/ Ant-Man'),
	(8, 23, 'Hope Van Dyne'),
	(8, 24, 'Hank Pym'),
	(9, 19, 'Tony Stark/ Iron Man'),
	(9, 20, 'Virginia "Pepper" Potts'),
	(9, 21, 'Obadiah Stane/ Iron Monger');

	--TEST to see if evernthing in correct
SELECT Title, CONCAT(FirstName, ', ', LastName) AS Actor, Role
  FROM Credit C
  JOIN Movie M ON M.id = C.MovieID
  JOIN Actor A ON A.ID = C.ActorID;