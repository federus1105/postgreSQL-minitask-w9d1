CREATE DATABASE new_db

CREATE TABLE members (
id INT PRIMARY KEY,
nama VARCHAR(255) NOT NULL);


CREATE TABLE categories (
id INT PRIMARY KEY,
nama VARCHAR(255) NOT NULL);


CREATE TABLE librarians (
id INT PRIMARY KEY,
nama VARCHAR(255) NOT NULL);


CREATE TABLE bookshelves (
id INT PRIMARY KEY, 
code VARCHAR(255) NOT NULL, 
category_id INT NOT NULL, 
FOREIGN KEY (category_id) REFERENCES categories(id)
);


CREATE TABLE books (id INT PRIMARY KEY,
title VARCHAR(255) NOT NULL,
author VARCHAR(100) NOT NULL,
category_id INT NOT NULL,
bookshelves_id INT NOT NULL,
Foreign Key (category_id) REFERENCES categories(id),
Foreign Key (bookshelves_id) REFERENCES bookshelves (id)
);

CREATE TABLE borrowing (book_id INT,
member_id INT,
librarian_id INT,
Foreign Key (book_id) REFERENCES books(id),
Foreign Key (member_id) REFERENCES members(id),
Foreign Key (librarian_id) REFERENCES librarians(id)
);

INSERT INTO members(name) VALUES
('Cristian'),
('Sidiq'),
('Yusuf'),
('Radif'),
('Federus'),
('Titus'),
('Anggi'),
('Raihan'),
('Febry'),
('Lala');

INSERT INTO librarians(name) VALUES
('Febry'),
('Lala'),
('Anggi'),
('Slamet'),
('Titus'),
('Raihan Inkam'),
('Farid'),
('Yusuf'),
('Sidiq'),
('C Jancok');

INSERT INTO categories(name) VALUES
('romance'),
('fiction'),
('young-adult'),
('fantasy'),
('science-fiction'),
('non-fiction'),
('children'),
('history'),
('covers'),
('mystery');

INSERT INTO bookshelves(code, category_id) VALUES
('8153', 1),
('7726', 2),
('5866', 3),
('5321', 4),
('3675', 5),
('3102', 6),
('2516', 7),
('2342', 8),
('2317', 9),
('2237', 10);

INSERT INTO books(title, author, category_id, bookshelves_id) VALUES
('Do Androids Dream of Electric Sheep?','Philip K. Dick', 1, 1),
('Something Wicked This Way Comes','Ray Bradbury', 2, 2),
('Sheever`s Journal, Diary of a Poison Master','K. Ritz', 3, 3),
('The Curious Incident of the Dog in the Night-Time','Mark Haddon', 4, 4),
('To Kill a Mockingbird','Harper Lee', 5, 5),
('I Was Told There`d Be Cake: Essays','Sloane Crosley', 6, 6),
('The Unbearable Lightness of Being','Milan Kundera', 7, 8),
('Eats, Shoots & Leaves: The Zero Tolerance Approach to Punctuation','Lynne Truss', 8, 8),
('The Hollow Chocolate Bunnies of the Apocalypse','Robert Rankin', 9, 9),
('The Zombie Room','R.D. Ronald', 10, 10);

INSERT INTO borrowing(book_id, member_id, librarian_id) VALUES
( 1, 1, 1),
( 2, 2, 2),
( 3, 3, 3),
( 4, 4, 4),
( 5, 5, 5),
( 6, 6, 6),
( 7, 7, 7),
( 8, 8,8),
( 9, 9, 9),
( 10, 10, 10);