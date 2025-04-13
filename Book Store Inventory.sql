create table books (
book_id int primary key,
title varchar(50),
author varchar(50),
price float,
stock int,
genre varchar(30)
)
INSERT INTO books (book_id, title, author, price, stock, genre) VALUES (1, 'The Great Gatsby', 'F. Scott Fitzgerald', 350, 5, 'Fiction');
INSERT INTO books (book_id, title, author, price, stock, genre) VALUES (2, '1984', 'George Orwell', 400, 8, 'Dystopian');
INSERT INTO books (book_id, title, author, price, stock, genre) VALUES (3, 'The Catcher in the Rye', 'J.D. Salinger', 250, 12, 'Fiction');
INSERT INTO books (book_id, title, author, price, stock, genre) VALUES (4, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 650, 3, 'Non-fiction');
INSERT INTO books (book_id, title, author, price, stock, genre) VALUES (5, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 550, 15, 'Fantasy');
INSERT INTO books (book_id, title, author, price, stock, genre) VALUES (6, 'The Hobbit', 'J.R.R. Tolkien', 450, 10, 'Fantasy');
INSERT INTO books (book_id, title, author, price, stock, genre) VALUES (7, 'To Kill a Mockingbird', 'Harper Lee', 300, 4, 'Fiction');
INSERT INTO books (book_id, title, author, price, stock, genre) VALUES (8, 'The Lean Startup', 'Eric Ries', 500, 6, 'Business');
INSERT INTO books (book_id, title, author, price, stock, genre) VALUES (9, 'The Alchemist', 'Paulo Coelho', 200, 7, 'Adventure');
INSERT INTO books (book_id, title, author, price, stock, genre) VALUES (10, 'The Art of War', 'Sun Tzu', 150, 20, 'Self-help');

--Show all books
select * from books
--Show only title and price
select title, price from books
--Find books with price > 500
select * from books where price > 500
--Show books that are out of stock (stock = 0)
select * from books where stock = 0
--Find books by a specific author
select * from books where author = 'Paulo Coelho'
--Show all fiction books sorted by price (high to low)
select * from books where genre = 'Fiction' order by price desc
--Show top 3 most expensive books
select * from books order by price desc limit 3
--Find books with price between 300 and 600
select * from books where price between 300 and 600