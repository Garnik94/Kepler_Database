CREATE DATABASE Kepler_Library

CREATE TABLE Users (
	ID int IDENTITY NOT NULL PRIMARY KEY,
	Username nvarchar(20) NOT NULL,
	Password nvarchar(50) NOT NULL,
	Email nvarchar(50) NOT NULL,
	Has_Edit_Permission bit NOT NULL
)

INSERT INTO Users
VALUES ('admin', '1234', 'admin@.com')

select * from Users

CREATE TABLE Authors (
	Author_Id int IDENTITY NOT NULL PRIMARY KEY,
	Author_Name nvarchar(20) NOT NULL
)

CREATE TABLE Categories (
	Category_Id int IDENTITY NOT NULL PRIMARY KEY,
	Category_Name nvarchar(20) NOT NULL,
)

CREATE TABLE Languages (
	Language_Id int IDENTITY NOT NULL PRIMARY KEY,
	Language_Name nvarchar(20) NOT NULL,
)

CREATE TABLE Document_Types (
	Document_Type_Id int IDENTITY NOT NULL PRIMARY KEY,
	Document_Type_Name nvarchar(10) NOT NULL,
)

CREATE TABLE Journals (
	Journal_Id int IDENTITY NOT NULL PRIMARY KEY,
	Journal_Name nvarchar(10) NOT NULL,
)

CREATE TABLE Books (
	Book_Id int IDENTITY NOT NULL PRIMARY KEY,
	Author int NOT NULL FOREIGN KEY REFERENCES Authors(ID),
	Title nvarchar(20) NOT NULL,
	Category int NOT NULL FOREIGN KEY REFERENCES Categories(ID),
	Language int NOT NULL FOREIGN KEY REFERENCES Languages(ID),
	Year int NOT NULL,
	Document_Type int NOT NULL FOREIGN KEY REFERENCES Document_Types(ID),
	Pages int NOT NULL,
	Download_Url nvarchar(200) NOT NULL,
)

CREATE TABLE Articles (
	ID int IDENTITY NOT NULL PRIMARY KEY,
	Author int NOT NULL FOREIGN KEY REFERENCES Authors(ID),
	Title nvarchar(20) NOT NULL,
	Category int NOT NULL FOREIGN KEY REFERENCES Categories(ID),
	Language int NOT NULL FOREIGN KEY REFERENCES Languages(ID),
	Year int NOT NULL,
	Document_Type int NOT NULL FOREIGN KEY REFERENCES Document_Types(ID),
	Journal int NOT NULL FOREIGN KEY REFERENCES Journals(ID),
	Download_Url nvarchar(200) NOT NULL,
)

SELECT * FROM Books

SELECT * FROM Languages
