USE master
GO

DROP DATABASE IF EXISTS BMDB
	
CREATE DATABASE BMDB
GO

USE BMDB
GO

--Movie Table
CREATE TABLE Movie(
	ID			INT				IDENTITY(1,1), 
	Title		VARCHAR(75)		NOT NULL,
	[Year]		INT				NOT NULL,
	Rating		VARCHAR(5)		NOT NULL,
	Director	VARCHAR(75)		NOT NULL
	CONSTRAINT UC_Movie UNIQUE (Title,[Year])
);
GO