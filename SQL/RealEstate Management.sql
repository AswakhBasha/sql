create database project1
use realestate1
CREATE TABLE Agent (
    agent_id INT PRIMARY KEY AUTO_INCREMENT,
    aname VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    commission_rate DECIMAL(5,2) DEFAULT 5.00);
    DROP TABLE Agents
INSERT INTO Agent (agent_id, aname, phone, commission_rate) VALUES
(1, "aarthi", '1002003001', 4.05),
(2, 'abinaya', '1002003002', 4.1),
(3, 'akilan', '1002003003', 4.15),
(4, 'anbu', '1002003004', 4.2),
(5, 'aravind', '1002003005', 4.25),
(6, 'arun', '1002003006', 4.3),
(7, 'balamurugan', '1002003007', 4.35),
(8, 'bharathi', '1002003008', 4.4),
(9, 'chitra', '1002003009', 4.45),
(10, 'deva','1002003010', 4.5),
(11, 'dinesh', '1002003011', 4.55),
(12, 'eshwar',  '1002003012', 4.6),
(13, 'ganesh', '1002003013', 4.65),
(14, 'geetha',  '1002003014', 4.7),
(15, 'harini', '1002003015', 4.75),
(16, 'ilango', '1002003016', 4.8),
(17, 'jagadeesh','1002003017', 4.85),
(18, 'jaya',  '1002003018', 4.9),
(19, 'karthik',  '1002003019', 4.95),
(20, 'kavitha',  '1002003020', 5.0),
(21, 'lakshmi',  '1002003021', 5.05),
(22, 'mahesh',  '1002003022', 5.1),
(23, 'meena','1002003023', 5.15),
(24, 'raja',  '1002003024', 5.2),
(25, 'praveen', '1002003025', 5.25),
(26, 'rajesh', '1002003026', 5.3),
(27, 'senthil','1002003027', 5.35),
(28, 'thiru', '1002003028', 5.4),
(29, 'uma',  '1002003029', 5.45),
(30, 'vicky', '1002003030', 5.5);
 select * from agent
 CREATE TABLE Clients (
    client_id INT PRIMARY KEY AUTO_INCREMENT,
    cname VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    type ENUM('Buyer', 'Seller') NOT NULL,
    preferred_location VARCHAR(255));
    
INSERT INTO Clients (client_id, cname, phone, type, preferred_location) VALUES
(1, 'aravind','2003004001', 'Seller', 'adyar'),
(2, 'balaji', '2003004002', 'Buyer', 'anna nagar'),
(3, 'cibi',  '2003004003', 'Seller', 'chromepet'),
(4, 'dhanush', '2003004004', 'Buyer', 't.nagar'),
(5, 'elango', '2003004005', 'Seller', 'besant nagar'),
(6, 'gopal', '2003004006', 'Buyer', 'velachery'),
(7, 'harish', '2003004007', 'Seller', 'thambaram'),
(8, 'illango', '2003004008', 'Buyer', 'perambur'),
(9, 'jayakumar',  '2003004009', 'Seller', 'nungambakam'),
(10, 'karthik', '2003004010', 'Buyer', 'mylapore'),
(11, 'arun',  '2003004011', 'Seller', 'thiruvanmiyur'),
(12, 'ajay',  '2003004012', 'Buyer', 'guindy'),
(13, 'lakshmanan', '2003004013', 'Seller', 'madipakkam'),
(14, 'prabhu',  '2003004014', 'Buyer', 'saidapet'),
(15, 'sunil',  '2003004015', 'Seller', 'royapettah'),
(16, 'arjun', '2003004016', 'Buyer', 'triplicane'),
(17, 'ravi', '2003004017', 'Seller', 'ambattur'),
(18, 'ram',  '2003004018', 'Buyer', 'avadi'),
(19, 'deepan','2003004019', 'Seller', 'kolathur'),
(20, 'dharnish', '2003004020', 'Buyer', 'vadapalani'),
(21, 'abhi',  '2003004021', 'Seller', 'koyambedu'),
(22, 'sai',  '2003004022', 'Buyer', 'egmore'),
(23, 'jayashri', '2003004023', 'Seller', 'kilpauk'),
(24, 'perumal', '2003004024', 'Buyer', 'mountroad'),
(25, 'manoj', '2003004025', 'Seller', 'porur'),
(26, 'nithya', '2003004026', 'Buyer', 'sholinganallur'),
(27, 'janani',  '2003004027', 'Seller', 'pallavaram'),
(28, 'saravana', '2003004028', 'Buyer', 'thoraipakkam'),
(29, 'sakthi',  '2003004029', 'Seller','ashoknagar'),
(30, 'shrimathi', '2003004030', 'Buyer', 'red hills');
CREATE TABLE Properties (
    property_id INT PRIMARY KEY ,
    type ENUM ('House','Apartment','Commercial','Land')NOT NULL,
    city VARCHAR(255) NOT NULL,
    price DECIMAL(15,2) NOT NULL,
    agent_id INT,
    FOREIGN KEY (agent_id) REFERENCES Agent(agent_id) ON DELETE SET NULL,
    status ENUM ('Available', 'Sold', 'Pending', 'Rented') DEFAULT 'Available'
);
set foreign_key_checks=0;
DROP TABLE if exists Properties;
set foreign_key_checks=1;
DESC properties;
select distinct type from properties;
INSERT INTO Properties (property_id, type ,city, price, agent_id, status) VALUES
(1, 'House', 'red hills', 105000, 1, 'Available'),
(2, 'Land', 'ashoknagar', 110000, 2, 'Available'),
(3, 'Apartment', 'perungudi', 115000, 3, 'Available'),
(4, 'Land', 'pallavaram', 120000, 4, 'Available'),
(5, 'Commercial', 'porur', 125000, 5, 'Available'),
(6, 'House', 'mountroad', 130000, 6, 'Available'),
(7, 'Land', 'kilpauk', 135000, 7, 'Available'),
(8, 'Commercial', 'egmore', 140000, 8, 'Available'),
(9, 'Apartment', 'koyambedu', 145000, 9, 'Available'),
(10, 'House', 'vadapalani', 150000, 10, 'Available'),
(11, 'Land', 'kolathur', 155000, 11, 'Available'),
(12, 'Commercial', 'avadi', 160000, 12, 'Available'),
(13, 'Apartment', 'avadi', 165000, 13, 'Available'),
(14, 'Land', 'ambattur', 170000, 14, 'Available'),
(15, 'House', 'triplicane', 175000, 15, 'Available'),
(16, 'Commercial', 'royapettah', 180000, 16, 'Available'),
(17, 'Apartment', 'saidapet', 185000, 17, 'Available'),
(18, 'Land', 'madipakkam', 190000, 18, 'Available'),
(19, 'House', 'guindy', 195000, 19, 'Available'),
(20, 'Commercial', 'thiruvanmiyur',200000,20, 'Available'),
(21, 'House', 'mylapore', 205000, 21, 'Available'),
(22, 'Apartment', 'nungambakam', 210000, 22, 'Available'),
(23, 'Land', 'perambur', 215000, 23, 'Available'),
(24, 'House', 'tambaram', 220000, 24, 'Available'),
(25, 'Apartment', 'velachery', 225000, 25, 'Available'),
(26, 'Commercial', 'T.nagar', 230000, 26, 'Available'),
(27, 'House', 'chromepet', 235000, 27, 'Available'),
(28, 'Land', 'besantnagar', 240000, 28, 'Available'),
(29, 'Apartment', 'annanagar', 245000, 29, 'Available'),
(30, 'Commercial', 'adyar', 250000, 30, 'Available');
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    property_id INT,
    client_id INT,
    agent_id INT,
    sale_price DECIMAL(15,2) NOT NULL,
    transaction_date DATE,
    FOREIGN KEY (property_id) REFERENCES Properties(property_id) ON DELETE CASCADE,
    FOREIGN KEY (client_id) REFERENCES Clients(client_id) ON DELETE SET NULL,
    FOREIGN KEY (agent_id) REFERENCES Agent(agent_id) ON DELETE SET NULL);
    
    INSERT INTO Transactions (transaction_id, property_id, client_id, agent_id, sale_price,transaction_date) VALUES
(1, 1, 1, 1, 99500, '2025-03-2'),
(2, 2, 2, 2, 104000, '2025-03-3'),
(3, 3, 3, 3, 108500, '2025-03-4'),
(4, 4, 4, 4, 113000, '2025-03-5'),
(5, 5, 5, 5, 117500, '2025-03-6'),
(6, 6, 6, 6, 122000, '2025-03-7'),
(7, 7, 7, 7, 126500, '2025-03-8'),
(8, 8, 8, 8, 131000, '2025-03-9'),
(9, 9, 9, 9, 135500, '2025-03-10'),
(10, 10, 10, 10, 140000, '2025-03-11'),
(11, 11, 11, 11, 144500, '2025-03-12'),
(12, 12, 12, 12, 149000, '2025-03-13'),
(13, 13, 13, 13, 153500, '2025-03-14'),
(14, 14, 14, 14, 158000, '2025-03-15'),
(15, 15, 15, 15, 162500, '2025-03-16'),
(16, 16, 16, 16, 167000, '2025-03-17'),
(17, 17, 17, 17, 171500, '2025-03-18'),
(18, 18, 18, 18, 176000, '2025-03-19'),
(19, 19, 19, 19, 180500, '2025-03-20'),
(20, 20, 20, 20, 185000, '2025-03-21'),
(21, 21, 21, 21, 189500, '2025-03-22'),
(22, 22, 22, 22, 194000, '2025-03-23'),
(23, 23, 23, 23, 198500, '2025-03-24'),
(24, 24, 24, 24, 203000, '2025-03-25'),
(25, 25, 25, 25, 207500, '2025-03-26'),
(26, 26, 26, 26, 212000, '2025-03-27'),
(27, 27, 27, 27, 216500, '2025-03-28'),
(28, 28, 28, 28, 221000, '2025-03-1'),
(29, 29, 29, 29, 225500, '2025-03-29'),
(30, 30, 30, 30, 230000, '2025-03-30');
 CREATE TABLE Listings(
        id INT PRIMARY KEY,
        property_id INT,
        agent_id INT,
        listing_date DATE,
        status ENUM ('Active','Closed'),
        FOREIGN KEY (property_id) REFERENCES properties(property_id),
        FOREIGN KEY (agent_id) REFERENCES Agent(agent_id));
        
INSERT INTO Listings (id, property_id, agent_id, listing_date, status) VALUES
(1, 1, 2, '2025-02-2', 'Active'),
(2, 2, 3, '2025-02-3', 'Active'),
(3, 3, 4, '2025-02-4', 'Active'),
(4, 4, 5, '2025-02-5', 'Active'),
(5, 5, 6, '2025-02-6', 'Active'),
(6, 6, 7, '2025-02-7', 'Active'),
(7, 7, 8, '2025-02-8', 'Active'),
(8, 8, 9, '2025-02-9', 'Active'),
(9, 9, 10, '2025-02-10', 'Active'),
(10, 10, 1, '2025-02-11', 'Active'),
(11, 11, 2, '2025-02-12', 'Active'),
(12, 12, 3, '2025-02-13', 'Active'),
(13, 13, 4, '2025-02-14', 'Active'),
(14, 14, 5, '2025-02-15', 'Active'),
(15, 15, 6, '2025-02-16', 'Active'),
(16, 16, 7, '2025-02-17', 'Active'),
(17, 17, 8, '2025-02-18', 'Active'),
(18, 18, 9, '2025-02-19', 'Active'),
(19, 19, 10, '2025-02-20', 'Active'),
(20, 20, 1, '2025-02-21', 'Active'),
(21, 21, 2, '2025-02-22', 'Active'),
(22, 22, 3, '2025-02-23', 'Active'),
(23, 23, 4, '2025-02-24', 'Active'),
(24, 24, 5, '2025-02-25', 'Active'),
(25, 25, 6, '2025-02-26', 'Active'),
(26, 26, 7, '2025-02-27', 'Active'),
(27, 27, 8, '2025-02-28', 'Active'),
(28, 28, 9, '2025-02-1', 'Active'),
(29, 29, 10, '2025-02-2', 'Active'),
(30, 30, 1, '2025-02-3', 'Active');
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    transaction_id INT,
    amount DECIMAL(15,2) NOT NULL,
    payment_date DATE,
    payment_method ENUM('Bank Transfer','Credit Card', 'Cash') NOT NULL,
    FOREIGN KEY (transaction_id) REFERENCES Transactions(transaction_id) ON DELETE CASCADE
);
INSERT INTO Payments (payment_id, transaction_id, amount, payment_date,payment_method) VALUES
(1, 1, 5200, '2025-04-2', 'Bank Transfer'),
(2, 2, 5400, '2025-04-3', 'Bank Transfer'),
(3, 3, 5600, '2025-04-4', 'Bank Transfer'),
(4, 4, 5800, '2025-04-5', 'Bank Transfer'),
(5, 5, 6000, '2025-04-6', 'Bank Transfer'),
(6, 6, 6200, '2025-04-7', 'Bank Transfer'),
(7, 7, 6400, '2025-04-8', 'Bank Transfer'),
(8, 8, 6600, '2025-04-9', 'Bank Transfer'),
(9, 9, 6800, '2025-04-10', 'Bank Transfer'),
(10, 10, 7000, '2025-04-11', 'Bank Transfer'),
(11, 11, 7200, '2025-04-12', 'Bank Transfer'),
(12, 12, 7400, '2025-04-13', 'Bank Transfer'),
(13, 13, 7600, '2025-04-14', 'Bank Transfer'),
(14, 14, 7800, '2025-04-15', 'Bank Transfer'),
(15, 15, 8000, '2025-04-16', 'Bank Transfer'),
(16, 16, 8200, '2025-04-17', 'Bank Transfer'),
(17, 17, 8400, '2025-04-18', 'Bank Transfer'),
(18, 18, 8600, '2025-04-19', 'Bank Transfer'),
(19, 19, 8800, '2025-04-20', 'Bank Transfer'),
(20, 20, 9000, '2025-04-21', 'Bank Transfer'),
(21, 21, 9200, '2025-04-22', 'Bank Transfer'),
(22, 22, 9400, '2025-04-23', 'Bank Transfer'),
(23, 23, 9600, '2025-04-24', 'Bank Transfer'),
(24, 24, 9800, '2025-04-25', 'Bank Transfer'),
(25, 25, 10000, '2025-04-26', 'Bank Transfer'),
(26, 26, 10200, '2025-04-27', 'Bank Transfer'),
(27, 27, 10400, '2025-04-28', 'Bank Transfer'),
(28, 28, 10600, '2025-04-1', 'Bank Transfer'),
(29, 29, 10800, '2025-04-2', 'Bank Transfer'),
(30, 30, 11000, '2025-04-3', 'Bank Transfer');
select * from agent
select * from properties
select * from clients
select * from Transactions
select * from payments
select * from listings


-- 1. Retrieve all agents
SELECT * FROM Agent;

-- 2. Retrieve all clients
SELECT * FROM Clients;

-- 3. Retrieve all properties available for sale
SELECT * FROM Properties WHERE status = 'Available';

-- 4. Retrieve all transactions made in March 2025
SELECT * FROM Transactions WHERE  transaction_date BETWEEN '2025-03-04' AND '2025-03-17';

-- 5. Get the total number of properties listed
SELECT COUNT(*) AS total_properties FROM Properties;

-- 6. Get the total number of transactions
SELECT COUNT(*) AS total_transactions FROM Transactions;

-- 7. Find the average sale price of properties
SELECT AVG(sale_price) AS average_price FROM Transactions;

-- 8. Find the highest sale price in Transactions
SELECT MAX(sale_price) AS highest_price FROM Transactions;

-- 9. Find the lowest sale price in Transactions
SELECT MIN(sale_price) AS lowest_price FROM Transactions;

-- 10. Get the total commission earned by each agent
SELECT agent_id, SUM(sale_price * 0.05) AS total_commission FROM Transactions GROUP BY agent_id;

-- 11. Retrieve all transactions along with agent and client names
SELECT t.transaction_id, p.type, c.cname AS client_name, a.aname AS agent_name, t.sale_price, t. transaction_date
FROM Transactions t
JOIN Properties p ON t.property_id = p.type
JOIN Clients c ON t.client_id = c.client_id
JOIN Agent a ON t.agent_id = a.agent_id;

-- 12. Retrieve all properties listed by a specific agent (e.g., Agent ID 5)
SELECT * FROM Properties WHERE agent_id = 5;

-- 13. Get the number of properties listed per city
SELECT city, COUNT(*) AS total_properties FROM Properties GROUP BY city;

-- 14. Retrieve payments greater than $10,000
SELECT * FROM Payments WHERE amount > 10000;

-- 15. Find properties that have not been sold (no transactions yet)
SELECT * FROM Properties WHERE property_id NOT IN (SELECT property_id FROM Transactions);

-- 16. Find agents who have made at least 2 transactions
SELECT agent_id, COUNT(*) AS total_sales FROM Transactions GROUP BY agent_id HAVING COUNT(*) >= 2;

-- 17. Retrieve the top 3 highest sale transactions
SELECT * FROM Transactions ORDER BY sale_price DESC LIMIT 3;

-- 18. Get total payments received per transaction
SELECT transaction_id, SUM(amount) AS total_payment FROM Payments GROUP BY transaction_id;

-- 19. Retrieve all clients who are buyers
SELECT * FROM Clients WHERE type = 'Buyer';

-- 20. Retrieve all clients who are sellers
SELECT * FROM Clients WHERE type = 'Seller';

-- 21. Get the most expensive property available
SELECT * FROM Properties WHERE price = (SELECT MAX(price) FROM Properties);

-- 22. Get the least expensive property available
SELECT * FROM Properties WHERE price = (SELECT MIN(price) FROM Properties);

-- 23. Retrieve all listings with property and agent details
SELECT l.id, p.type, a.aname AS agent_name, l.listing_date, l.status
FROM Listings l
JOIN Properties p ON l.property_id = p.type
JOIN Agent a ON l.agent_id = a.agent_id;

-- 24. Get the total number of properties handled by each agent
SELECT agent_id, COUNT(*) AS total_properties FROM Properties GROUP BY agent_id;

-- 25. Retrieve properties sold in a specific city (e.g., 'City 5')
SELECT * FROM Properties WHERE city = 'annanagar' AND property_id IN (SELECT property_id FROM Transactions);

-- 26. Find the agent who made the highest sale
SELECT a.agent_id, a.aname, MAX(t.sale_price) AS highest_sale
FROM Transactions t JOIN Agent a ON t.agent_id = a.agent_id
GROUP BY a.agent_id, a.aname ORDER BY highest_sale DESC LIMIT 1;

-- 27. Find the total revenue generated from all sales
SELECT SUM(sale_price) AS total_revenue FROM Transactions;

-- 28. Find the total revenue per city
SELECT p.city, SUM(t.sale_price) AS city_revenue 
FROM Transactions t JOIN Properties p ON t.property_id = p.type
GROUP BY p.city;

-- 29. Retrieve transactions and include the payment details
SELECT t.transaction_id, p.type, c.cname AS client_name, t.sale_price, pay.amount, pay.payment_date
FROM Transactions t
JOIN Properties p ON t.property_id = p.type
JOIN Clients c ON t.client_id = c.client_id
JOIN Payments pay ON pay.payment_id = pay.transaction_id;

-- 30. Get a list of agents who haven't made any sales yet
SELECT * FROM Agent WHERE agent_id NOT IN (SELECT DISTINCT agent_id FROM Transactions);

