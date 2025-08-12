--Customers Table
CREATE TABLE Customers(
customer_id SERIAL PRIMARY KEY,
customer_name VARCHAR(200) NOT NULL,
city VARCHAR(200) NOT NULL,
state VARCHAR(200) NOT NULL DEFAULT 'Pakistan',
join_date DATE DEFAULT CURRENT_DATE
);


--Cars Table 
CREATE TABLE Cars(
car_id SERIAL PRIMARY KEY,
model VARCHAR(200) NOT NULL,
brand VARCHAR(200) NOT NULL,
year INT NOT NULL,
price NUMERIC,
inventory_count INT
);


--Salesperson Table
CREATE TABLE Salesperson(
salesperson_id SERIAL PRIMARY KEY,
name VARCHAR(200) NOT NULL,
department VARCHAR(200),
hire_date DATE DEFAULT CURRENT_DATE
);


--Sales Table 
CREATE TABLE Sales(
sales SERIAL PRIMARY KEY,
customer_id INT NOT NULL,
car_id INT NOT NULL,
sale_date DATE NOT NULL,
sale_price NUMERIC NOT NULL,
salesperson_id INT NOT NULL,

FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
FOREIGN KEY (car_id) REFERENCES Cars(car_id),
FOREIGN KEY (salesperson_id) REFERENCES Salesperson(salesperson_id)
);


--ServiceReacord Table 
CREATE TABLE ServiceRecord(
Record_id SERIAL PRIMARY KEY,
car_id INT NOT NULL,
service_date DATE DEFAULT CURRENT_DATE,
service_type VARCHAR(200),
cost NUMERIC,
technical_id INT NOT NULL,
FOREIGN KEY (car_id) REFERENCES Cars(car_id)
);

--Customers Insertions
INSERT INTO Customers (customer_name, city, state, join_date) VALUES
('Abdullah Imran', 'Lahore', 'Punjab', '2024-08-01'),
('Neeraj Kumar', 'Karachi', 'Sindh', '2025-08-02'),
('Ali Sultan', 'Islamabad', 'Capital Territory', '2025-08-03'),
('Ubaidullah', 'Faisalabad', 'Punjab', '2024-08-04'),
('Mustafa Akhlaq', 'Rawalpindi', 'Punjab', '2025-08-05'),
('Zainab Noor', 'Multan', 'Punjab', '2024-08-06'),
('Hassan Saeed', 'Peshawar', 'Khyber Pakhtunkhwa', '2025-08-07'),
('Nida Hassan', 'Quetta', 'Balochistan', '2024-08-08'),
('Rizwan Ahmed', 'Sialkot', 'Punjab', '2025-08-09'),
('Hina Shah', 'Gujranwala', 'Punjab', '2025-08-10'),
('Imran Sheikh', 'Bahawalpur', 'Sindh', '2024-08-11'),
('Mariam Javed', 'Sargodha', 'Punjab', '2025-08-12'),
('Tariq Mehmood', 'Sukkur', 'Sindh', '2024-08-01'),
('Sana Mir', 'Hyderabad', 'Sindh', '2025-08-02'),
('Jawad Bashir', 'Abbottabad', 'Khyber Pakhtunkhwa', '2025-08-03');

--Cars Insertion
INSERT INTO Cars (model, brand, year, price, inventory_count) VALUES
('Corolla Altis', 'Toyota', 2022, 3400000, 12),
('Civic Turbo', 'Honda', 2023, 5200000, 8),
('Swift GLX', 'Suzuki', 2021, 2800000, 15),
('Sportage AWD', 'Kia', 2024, 6700000, 5),
('Tucson GLS', 'Hyundai', 2023, 6550000, 7),
('Alto VXR', 'Suzuki', 2022, 2100000, 20),
('City Aspire', 'Honda', 2024, 4100000, 10),
('Yaris ATIV', 'Toyota', 2023, 3900000, 11),
('Picanto', 'Kia', 2022, 2500000, 13),
('Elantra', 'Hyundai', 2024, 5600000, 6),
('Hilux Revo', 'Toyota', 2023, 9500000, 4),
('Celerio', 'Suzuki', 2021, 2400000, 9),
('Stonic', 'Kia', 2024, 5300000, 7),
('Sonata', 'Hyundai', 2023, 8200000, 3),
('BR-V', 'Honda', 2022, 4700000, 6),
('Land Cruiser', 'Toyota', 2024, 42000000, 1),
('Santro', 'Hyundai', 2021, 2000000, 14),
('Mehran VX', 'Suzuki', 2019, 1200000, 25),
('Sorento', 'Kia', 2023, 7200000, 4),
('Prado TXL', 'Toyota', 2024, 19500000, 2);

--Salesperson Insertion 
INSERT INTO Salesperson (name, department, hire_date) VALUES
('Ali Raza', 'New Cars', '2023-06-15'),
('Sana Ahmed', 'Used Cars', '2024-01-20'),
('Imran Qureshi', 'New Cars', '2024-09-10'),
('Zoya Hassan', 'Used Cars', '2025-03-05'),
('Tahir Mehmood', 'Used Cars', '2023-11-30');

--Sales Insertion 
INSERT INTO Sales (customer_id, car_id, sale_date, sale_price, salesperson_id) VALUES
(4, 3, '2025-07-01', 2750000, 2),
(5, 1, '2025-07-03', 3400000, 1),
(2, 4, '2025-07-05', 6650000, 3),
(7, 3, '2025-07-06', 2100000, 2),
(9, 2, '2025-07-08', 5150000, 1),
(12, 3, '2025-07-10', 6500000, 4),
(15, 8, '2025-07-12', 3850000, 3),
(13, 3, '2025-07-14', 9400000, 5),
(6, 10, '2025-07-15', 5550000, 4),
(10, 7, '2025-07-18', 4050000, 1),
(3, 5, '2025-07-20', 3350000, 2),
(7, 2, '2025-07-21', 5100000, 3),
(10, 12, '2025-07-22', 2300000, 1),
(12, 8, '2025-07-23', 3800000, 4),
(4, 1, '2025-07-24', 3400000, 2),
(6, 11, '2025-07-25', 9450000, 5),
(9, 3, '2025-07-26', 2050000, 3),
(13, 9, '2025-07-27', 2480000, 1),
(14, 3, '2025-07-28', 6600000, 4),
(15, 13, '2025-07-29', 5250000, 2);

--ServiceRecord Insertion 
INSERT INTO ServiceRecord (car_id, service_date, service_type, cost, technical_id) VALUES
(1, '2024-07-02', 'Oil Change', 5000, 101),
(3, '2025-07-04', 'Engine Tuning', 8500, 102),
(5, '2024-07-06', 'Tire Replacement', 16000, 103),
(7, '2025-07-08', 'Brake Service', 7200, 101),
(9, '2024-07-10', 'Battery Replacement', 9500, 104),
(11, '2025-07-12', 'Transmission Check', 12000, 105),
(13, '2024-07-14', 'Full Inspection', 10000, 102),
(15, '2024-07-16', 'Suspension Repair', 18000, 106),
(17, '2023-07-18', 'AC Service', 6500, 104),
(19, '2025-07-20', 'Radiator Flush', 7800, 103);

--------------------------------------------------------------------------------
--Basic Aggregate Function
--------------------------------------------------------------------------------

--Number of customer in Database 
SELECT COUNT(customer_id) FROM customers;

--Average sale price of all cars 
SELECT AVG(sale_price) FROM Sales;

--Most expensive ever sold
SELECT *
FROM Cars
WHERE car_id = (
    SELECT car_id
    FROM Sales
    ORDER BY sale_price DESC
    LIMIT 1
);

--Determine the total inventory count of all cars in the showroom.
SELECT SUM(inventory_count) FROM Cars;

--Find the earliest and most recent sale dates.
SELECT MIN(sale_date) as earliest_sale,MAX(sale_date) as recent_sale FROM Sales;

---------------------------------------------------------------------------------------------------------------------------
--GROUP BY EXERCISE
---------------------------------------------------------------------------------------------------------------------------

--Group cars by brand and count how many models each brand has.
SELECT brand,count(model) from Cars 
GROUP BY brand;

--Calculate the total sales amount for each salesperson.
SELECT salesperson_id,SUM(sale_price)
FROM Sales GROUP BY salesperson_id;

--Find the average sale price for each car model.
SELECT car_id,AVG(sale_price) FROM sales GROUP BY car_id;

--For each service type, find the average service cost.
SELECT service_type,AVG(cost) FROM ServiceRecord GROUP BY service_type;

--Find the count of cars by brand and color combination from the cars table
SELECT brand, COUNT(*) AS color_combinations from Cars
GROUP BY brand;

----------------------------------------------------------------------------------------------------------------------------
--Having Clause Exercise
----------------------------------------------------------------------------------------------------------------------------

--Identify brands that offer more than four different car models
SELECT brand, COUNT(DISTINCT model) AS model_count
FROM Cars
GROUP BY brand
HAVING COUNT(DISTINCT model) > 4;

--List car models that have been sold more than 10 times.
SELECT 
    c.model,
    COUNT(*) AS times_sold
FROM Sales s
JOIN Cars c ON s.car_id = c.car_id
GROUP BY c.model
HAVING COUNT(*) > 5;

-- Find salespersons whose average sale price is greater than 50,000.
SELECT 
    sp.salesperson_id,
    sp.name,
    AVG(s.sale_price) AS average_sale_price
FROM Sales s
JOIN Salesperson sp ON s.salesperson_id = sp.salesperson_id
GROUP BY sp.salesperson_id, sp.name
HAVING AVG(s.sale_price) > 50000;

--Identify months that had more than 20 sales.
SELECT 
    TO_CHAR(sale_date, 'YYYY-MM') AS sale_month,
    COUNT(*) AS total_sales
FROM Sales
GROUP BY TO_CHAR(sale_date, 'YYYY-MM')
HAVING COUNT(*) > 20
ORDER BY sale_month;


--Find service types where the average cost is greater than 5000
SELECT 
    service_type,
    AVG(cost) AS average_cost
FROM ServiceRecord
GROUP BY service_type
HAVING AVG(cost) > 5000;



