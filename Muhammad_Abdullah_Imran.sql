CREATE TABLE books(book_id SERIAL PRIMARY KEY,title VARCHAR(200),
    author VARCHAR(200),
    year_published INT,
    isAvailable BOOLEAN,
    price NUMERIC,
    publication VARCHAR(200));

INSERT INTO books (title, author, year_published, isAvailable, price, publication) VALUES
('The Great Book', 'John Doe', 2005, TRUE, 499.99, 'ABC'),
('1984', 'George Orwell', 1949, FALSE, 299.99, 'XYZ'),
('Brave New World', 'Aldous Huxley', 1932, TRUE, 459.50, 'XYZ'),
('Fahrenheit 451', 'Ray Bradbury', 1953, TRUE, 379.00, 'DEF'),
('The Catcher in the Rye', 'J.D. Salinger', 1951, FALSE, 559.00, 'LMN'),
('To Kill a Mockingbird', 'Harper Lee', 1960, TRUE, 589.00, 'XYZ'),
('The Road', 'Cormac McCarthy', 2006, TRUE, 620.00, 'PQR'),
('Dune', 'Frank Herbert', 1965, TRUE, 699.99, 'PQR'),
('The Hobbit', 'J.R.R. Tolkien', 1937, TRUE, 329.99, 'XYZ'),
('The Alchemist', 'Paulo Coelho', 1988, FALSE, 250.00, 'ABC'),
('Sapiens', 'Yuval Noah Harari', 2011, TRUE, 849.00, 'PQR'),
('The Silent Patient', 'Alex Michaelides', 2019, TRUE, 670.00, 'XYZ'),
('Educated', 'Tara Westover', 2018, TRUE, 700.00, 'DEF'),
('Atomic Habits', 'James Clear', 2018, TRUE, 499.00, 'LMN'),
('The Midnight Library', 'Matt Haig', 2020, TRUE, 575.00, 'XYZ');

SELECT * FROM books WHERE year_published > 2000;

SELECT * FROM books WHERE price < 599.00 ORDER BY price DESC;

SELECT * FROM books ORDER BY price DESC LIMIT 3;

SELECT * FROM books ORDER BY year_published OFFSET 2 LIMIT 2;

SELECT * FROM books WHERE publication = 'XYZ' ORDER BY publication;