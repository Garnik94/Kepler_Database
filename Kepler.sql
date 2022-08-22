CREATE DATABASE Kepler_Library

Drop database Kepler_Library

CREATE TABLE Users (
	ID int IDENTITY NOT NULL PRIMARY KEY,
	Username nvarchar(20) NOT NULL,
	Password nvarchar(50) NOT NULL,
	Email nvarchar(50) NOT NULL,
	Has_Edit_Permission bit NOT NULL
)

INSERT INTO Users
VALUES ('admin', '1234', 'admin@.com', 0)

UPDATE Users SET Has_Edit_Permission = 1 WHERE ID = 1

TRUNCATE TABLE Users

select DISTINCT * from Users where LOWER(Username) = LOWER('admin')

CREATE TABLE Authors (
	Author_Id int IDENTITY NOT NULL PRIMARY KEY,
	Author_Name nvarchar(max) NOT NULL
)

CREATE TABLE Categories (
	Category_Id int IDENTITY NOT NULL PRIMARY KEY,
	Category_Name nvarchar(max) NOT NULL,
)

CREATE TABLE Languages (
	Language_Id int IDENTITY NOT NULL PRIMARY KEY,
	Language_Name nvarchar(max) NOT NULL,
)

CREATE TABLE Document_Types (
	Document_Type_Id int IDENTITY NOT NULL PRIMARY KEY,
	Document_Type_Name nvarchar(max) NOT NULL,
)

/*ON DELETE CASCADE*/

DROP TABLE Articles

select * from Books

CREATE TABLE Books (
	Book_Id int IDENTITY NOT NULL PRIMARY KEY,
	Author int NOT NULL FOREIGN KEY REFERENCES Authors(Author_Id),
	Title nvarchar(max) NOT NULL,
	Category int NOT NULL FOREIGN KEY REFERENCES Categories(Category_Id),
	Language int NOT NULL FOREIGN KEY REFERENCES Languages(Language_Id),
	Year int NOT NULL,
	Document_Type int NOT NULL FOREIGN KEY REFERENCES Document_Types(Document_Type_Id),
	Pages int NOT NULL,
	Download_Url nvarchar(max) NOT NULL,
)
Drop table Authors
Drop table Categories
Drop table Languages
Drop table Document_Types
Drop table Books

Truncate table Books

Truncate table Categories

Truncate table Languages

Truncate table Document_Types

SELECT * FROM Users

SELECT * FROM Authors

SELECT * FROM Categories

DELETE Categories WHERE Category_Id = '22'

INSERT INTO Authors VALUES
('Mikhail Bulgakov'),
('Arthur Conan Doyle'),
('George Orwel'),
('Joanne Rowling'),
('John Tolkien'),
('Miguel Servantes'),
('Yuval Noah Harari'),
('Aleksander Dumas'),
('Hovhannse Tumanyan'),
('William Saroyan')




INSERT INTO Categories VALUES
('Novel'),
('Story'),
('Detective'),
('Antiutopia'),
('Fiction'),
('Popular science'),
('Poem')


INSERT INTO Languages VALUES
('Russian'),
('English'),
('Spanish'),
('Armenian')


INSERT INTO Document_Types VALUES
('mobi'),
('pdf'),
('txt'),
('epub'),
('djvu')

INSERT INTO Books (Author, Title, Category, Language, Year, Document_Type, Pages, Download_Url)
VALUES 
(1, 'The Master and Margarita', 1, 1, 1966, 1, 504, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(1, 'The dogs heart', 2, 1, 1925, 2, 94, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(1, 'Morfium', 2, 1, 1926, 2, 54, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(1, 'White guard', 1, 1, 1927, 2, 304, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(1, 'Young doctors notebook', 2, 1, 1922, 3, 195, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(1, 'Ivan Vasilyevich', 2, 1, 1922, 1, 122, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),

(2, 'A Study in Scarlet', 3, 2, 1887, 4, 211, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(2, 'Sherlock Holmes', 3, 2, 1905, 4, 751, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(2, 'The Hound Baskervilles', 3, 2, 1911, 4, 658, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),

(3, 'Animale Farm', 4, 2, 1945, 4, 257, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(3, '1984', 4, 2, 1947, 4, 365, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(3, 'Nineteen Eighty-Four', 4, 2, 1941, 4, 489, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),

(4, 'Harry Potter', 5, 2, 1995, 4, 1570, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),

(5, 'The Return Of The King', 5, 2, 1954, 1, 725, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(5, 'The Fellowship', 5, 2, 1949, 1, 634, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(5, 'The Two Towers', 5, 2, 1951, 4, 514, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(5, 'The Hobbit', 5, 2, 1937, 4, 854, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),

(6, 'Don Quixote 1', 5, 3, 1605, 5, 729, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(6, 'Don Quixote 2', 5, 3, 1615, 5, 817, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),

(7, 'Sapiens', 6, 1, 2015, 1, 521, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(7, 'Homu Deus', 6, 1, 2017, 1, 637, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(7, '21 lessons for the 21', 6, 1, 2019, 1, 476, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),

(8, 'The Count of Monte Cristo', 1, 1, 1847, 3, 1340, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(8, 'Three Musketeers', 1, 1, 1831, 3, 820, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),

(9, 'The Dog and the Cat', 7, 4, 1886, 3, 24, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(9, 'Maro', 7, 4, 1887, 3, 34, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(9, 'Akhtamar', 7, 4, 1891, 3, 19, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(9, 'David of Sassoun', 7, 4, 1902, 2, 55, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(9, 'The Capture of Fort Tmuk', 7, 4, 1902, 2, 29, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(9, 'A Drop of Honey', 7, 4, 1909, 2, 15, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(9, 'The End of Evil', 7, 4, 1908, 1, 11, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(9, 'The Shah and the Peddler', 7, 4, 1917, 1, 27, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),

(10, 'The Daring Young Man', 2, 4, 1934, 1, 124, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(10, 'Inhale and Exhale', 2, 4, 1936, 1, 254, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(10, 'Three Times Three', 2, 4, 1937, 1, 199, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(10, 'Little Children', 2, 4, 1935, 1, 221, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(10, 'The Trouble With Tigers', 1, 4, 1938, 4, 301, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(10, 'The Gay and Melancholy Flux', 1, 4, 1940, 4, 321, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(10, 'Love Here Is My Hat', 1, 4, 1931, 3, 158, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(10, 'A Native American', 1, 4, 1938, 3, 189, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(10, 'Peace, Its Wonderful', 1, 4, 1933, 3, 120, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing'),
(10, 'My Name Is Aram', 1, 4, 1940, 2, 451, 'https://drive.google.com/file/d/1pbZCFo17C2jfBwXEv2Hbf7ndox5RlGRF/view?usp=sharing')


select * from Categories

