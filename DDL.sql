CREATE DATABASE IF NOT EXISTS bank;
show databases;
USE bank;
show tables;

create table customers(
cust_id int primary key,
first_name varchar(50),
last_name varchar(50),
email varchar(50),
contact_no varchar(20),
dob date,
gender enum("M","F")
);


create table branches(
branch_id int primary key,
branch_name varchar(80),
branch_address varchar(80),
branch_phone_no varchar(20)
);

CREATE TABLE Accounts (
	Account_ID INT PRIMARY KEY,
    Account_Type VARCHAR(30),
    Balance DECIMAL(10,2),
    Customer_ID INT,
    Branch_ID INT 
    );

create table loan(
loan_id int primary key,
loan_amt decimal(10,2),
interest_rate decimal(5,2),
start_date date,
end_date date,
customer_id int
);

CREATE TABLE transaction_table (
    tran_id INT PRIMARY KEY,
    tran_date DATE,
    amount DECIMAL(10,2),
    tran_type VARCHAR(50),
    account_id INT
);


alter table customers
add column demo int;

alter table customers
drop demo;


INSERT INTO customers
(customer_id, first_name, last_name, email, contact_no, dob, gender)
VALUES
(1, 'sid', 'sakpal', 'sid12@gmail.com', '8436778321', '2002-02-14', 'M'),
(2, 'soham', 'bhoir', 'sbhoir@gmail.com', '8806127653', '2004-04-01', 'M'),
(3, 'anish', 'kadam', 'anishk@gmail.com', '7996092143', '2005-11-11', 'M'),
(4, 'mayuri', 'bhoir', 'bhoirmayuri@gmail.com', '9224441520', '2004-05-27', 'F'),
(5, 'Aarav', 'Sharma', 'aarav.sharma@example.com', '9876543210', '1995-04-12', 'M'),
(6, 'Priya', 'Patel', 'priya.patel@example.com', '9876543211', '1998-07-23', 'F'),
(7, 'Rahul', 'Verma', 'rahul.verma@example.com', '9876543212', '1992-11-05', 'M'),
(8, 'Sneha', 'Deshmukh', 'sneha.deshmukh@example.com', '9876543213', '1996-02-18', 'F'),
(9, 'Vikram', 'Singh', 'vikram.singh@example.com', '9876543214', '1989-09-14', 'M'),
(10, 'Ananya', 'Reddy', 'ananya.reddy@example.com', '9876543215', '2000-01-30', 'F'),
(11, 'Rohan', 'Mehta', 'rohan.mehta@example.com', '9876543216', '1994-06-17', 'M'),
(12, 'Pooja', 'Kulkarni', 'pooja.kulkarni@example.com', '9876543217', '1997-12-09', 'F'),
(13, 'Amit', 'Gupta', 'amit.gupta@example.com', '9876543218', '1988-03-25', 'M'),
(14, 'Neha', 'Joshi', 'neha.joshi@example.com', '9876543219', '1999-08-11', 'F'),
(15, 'Karan', 'Malhotra', 'karan.malhotra@example.com', '9876543220', '1993-05-19', 'M'),
(16, 'Isha', 'Nair', 'isha.nair@example.com', '9876543221', '1995-10-02', 'F'),
(17, 'Siddharth', 'Rao', 'siddharth.rao@example.com', '9876543222', '1990-12-15', 'M'),
(18, 'Meera', 'Iyer', 'meera.iyer@example.com', '9876543223', '1998-04-28', 'F'),
(19, 'Arjun', 'Kumar', 'arjun.kumar@example.com', '9876543224', '1991-07-07', 'M'),
(20, 'Kavya', 'Mishra', 'kavya.mishra@example.com', '9876543225', '2001-02-14', 'F'),
(21, 'Aditya', 'Chopra', 'aditya.chopra@example.com', '9876543226', '1987-11-22', 'M'),
(22, 'Riya', 'Bansal', 'riya.bansal@example.com', '9876543227', '1996-09-03', 'F'),
(23, 'Manish', 'Yadav', 'manish.yadav@example.com', '9876543228', '1994-01-16', 'M'),
(24, 'Simran', 'Kaur', 'simran.kaur@example.com', '9876543229', '1999-06-26', 'F'),
(25, 'Dev', 'Shah', 'dev.shah@example.com', '9876543230', '1992-08-08', 'M'),
(26, 'Aditi', 'Saxena', 'aditi.saxena@example.com', '9876543231', '1997-03-12', 'F'),
(27, 'Nikhil', 'Pillai', 'nikhil.pillai@example.com', '9876543232', '1986-10-20', 'M'),
(28, 'Shreya', 'Ghosh', 'shreya.ghosh@example.com', '9876543233', '2000-05-06', 'F'),
(29, 'Varun', 'Agarwal', 'varun.agarwal@example.com', '9876543234', '1993-12-29', 'M'),
(30, 'Tanvi', 'Desai', 'tanvi.desai@example.com', '9876543235', '1998-09-17', 'F'),
(31, 'Saurabh', 'Tiwari', 'saurabh.tiwari@example.com', '9876543236', '1989-04-04', 'M'),
(32, 'Nisha', 'Menon', 'nisha.menon@example.com', '9876543237', '1995-11-13', 'F'),
(33, 'Akash', 'Jain', 'akash.jain@example.com', '9876543238', '1991-06-21', 'M'),
(34, 'Divya', 'Shetty', 'divya.shetty@example.com', '9876543239', '1996-01-08', 'F'),
(35, 'Mohit', 'Sinha', 'mohit.sinha@example.com', '9876543240', '1988-07-19', 'M'),
(36, 'Swati', 'Pandey', 'swati.pandey@example.com', '9876543241', '1997-10-24', 'F'),
(37, 'Harsh', 'Vardhan', 'harsh.vardhan@example.com', '9876543242', '1994-02-09', 'M'),
(38, 'Komal', 'Arora', 'komal.arora@example.com', '9876543243', '1999-12-01', 'F'),
(39, 'Yash', 'Thakur', 'yash.thakur@example.com', '9876543244', '1990-05-15', 'M'),
(40, 'Sakshi', 'Chavan', 'sakshi.chavan@example.com', '9876543245', '2002-03-27', 'F'),
(41, 'Pranav', 'Bhat', 'pranav.bhat@example.com', '9876543246', '1987-08-30', 'M'),
(42, 'Mansi', 'Jadhav', 'mansi.jadhav@example.com', '9876543247', '1998-06-05', 'F'),
(43, 'Abhishek', 'Das', 'abhishek.das@example.com', '9876543248', '1992-09-21', 'M'),
(44, 'Radhika', 'Menon', 'radhika.menon@example.com', '9876543249', '1995-04-16', 'F'),
(45, 'Kunal', 'Deshpande', 'kunal.deshpande@example.com', '9876543250', '1993-11-28', 'M'),
(46, 'Pallavi', 'Rane', 'pallavi.rane@example.com', '9876543251', '1996-07-14', 'F'),
(47, 'Omkar', 'Patil', 'omkar.patil@example.com', '9876543252', '1991-01-19', 'M'),
(48, 'Bhavna', 'Shukla', 'bhavna.shukla@example.com', '9876543253', '1999-05-22', 'F'),
(49, 'Ritesh', 'Khandelwal', 'ritesh.khandelwal@example.com', '9876543254', '1985-12-10', 'M'),
(50, 'Ayesha', 'Khan', 'ayesha.khan@example.com', '9876543255', '1997-08-03', 'F'),
(51, 'Gaurav', 'Mane', 'gaurav.mane@example.com', '9876543256', '1990-03-11', 'M'),
(52, 'Tanya', 'Kapoor', 'tanya.kapoor@example.com', '9876543257', '2001-09-25', 'F'),
(53, 'Ishaan', 'Bose', 'ishaan.bose@example.com', '9876543258', '1994-10-07', 'M'),
(54, 'Nandini', 'Rao', 'nandini.rao@example.com', '9876543259', '1998-12-18', 'F');

INSERT INTO branches
(branch_id, branch_name, branch_address, branch_phone_no)
VALUES
(1, 'Mumbai Main Branch', 'Fort, Mumbai, Maharashtra', '02240010001'),
(2, 'Andheri Branch', 'Andheri East, Mumbai, Maharashtra', '02240010002'),
(3, 'Bandra Branch', 'Bandra West, Mumbai, Maharashtra', '02240010003'),
(4, 'Thane Branch', 'Naupada, Thane, Maharashtra', '02240010004'),
(5, 'Kalyan Branch', 'Station Road, Kalyan, Maharashtra', '02514001005'),
(6, 'Pune Main Branch', 'Shivajinagar, Pune, Maharashtra', '02040010006'),
(7, 'Hadapsar Branch', 'Hadapsar, Pune, Maharashtra', '02040010007'),
(8, 'Wakad Branch', 'Wakad, Pune, Maharashtra', '02040010008'),
(9, 'Nashik Branch', 'College Road, Nashik, Maharashtra', '02534001009'),
(10, 'Nagpur Branch', 'Sitabuldi, Nagpur, Maharashtra', '07124001010'),
(11, 'Delhi Main Branch', 'Connaught Place, New Delhi', '01140010011'),
(12, 'Dwarka Branch', 'Sector 12, Dwarka, New Delhi', '01140010012'),
(13, 'Rohini Branch', 'Sector 7, Rohini, Delhi', '01140010013'),
(14, 'Karol Bagh Branch', 'Ajmal Khan Road, Delhi', '01140010014'),
(15, 'Saket Branch', 'Saket District Centre, Delhi', '01140010015'),
(16, 'Bangalore Main Branch', 'MG Road, Bengaluru, Karnataka', '08040010016'),
(17, 'Whitefield Branch', 'Whitefield, Bengaluru, Karnataka', '08040010017'),
(18, 'Electronic City Branch', 'Electronic City, Bengaluru, Karnataka', '08040010018'),
(19, 'Jayanagar Branch', 'Jayanagar, Bengaluru, Karnataka', '08040010019'),
(20, 'Indiranagar Branch', 'Indiranagar, Bengaluru, Karnataka', '08040010020'),
(21, 'Chennai Main Branch', 'T Nagar, Chennai, Tamil Nadu', '04440010021'),
(22, 'Anna Nagar Branch', 'Anna Nagar, Chennai, Tamil Nadu', '04440010022'),
(23, 'Velachery Branch', 'Velachery, Chennai, Tamil Nadu', '04440010023'),
(24, 'Adyar Branch', 'Adyar, Chennai, Tamil Nadu', '04440010024'),
(25, 'Tambaram Branch', 'Tambaram, Chennai, Tamil Nadu', '04440010025'),
(26, 'Hyderabad Main Branch', 'Abids, Hyderabad, Telangana', '04040010026'),
(27, 'Madhapur Branch', 'Madhapur, Hyderabad, Telangana', '04040010027'),
(28, 'Kukatpally Branch', 'Kukatpally, Hyderabad, Telangana', '04040010028'),
(29, 'Secunderabad Branch', 'MG Road, Secunderabad, Telangana', '04040010029'),
(30, 'Gachibowli Branch', 'Gachibowli, Hyderabad, Telangana', '04040010030'),
(31, 'Kolkata Main Branch', 'Park Street, Kolkata, West Bengal', '03340010031'),
(32, 'Salt Lake Branch', 'Sector V, Salt Lake, Kolkata', '03340010032'),
(33, 'Howrah Branch', 'Howrah Maidan, Howrah, West Bengal', '03340010033'),
(34, 'Dum Dum Branch', 'Dum Dum, Kolkata, West Bengal', '03340010034'),
(35, 'New Town Branch', 'Action Area 1, New Town, Kolkata', '03340010035'),
(36, 'Ahmedabad Main Branch', 'CG Road, Ahmedabad, Gujarat', '07940010036'),
(37, 'Satellite Branch', 'Satellite Road, Ahmedabad, Gujarat', '07940010037'),
(38, 'Surat Branch', 'Adajan, Surat, Gujarat', '02614001038'),
(39, 'Vadodara Branch', 'Alkapuri, Vadodara, Gujarat', '02654001039'),
(40, 'Rajkot Branch', 'Kalawad Road, Rajkot, Gujarat', '02814001040'),
(41, 'Jaipur Main Branch', 'MI Road, Jaipur, Rajasthan', '01414001041'),
(42, 'Jodhpur Branch', 'Sardarpura, Jodhpur, Rajasthan', '02914001042'),
(43, 'Udaipur Branch', 'Hiran Magri, Udaipur, Rajasthan', '02944001043'),
(44, 'Lucknow Main Branch', 'Hazratganj, Lucknow, Uttar Pradesh', '05224001044'),
(45, 'Kanpur Branch', 'Swaroop Nagar, Kanpur, Uttar Pradesh', '05124001045'),
(46, 'Bhopal Branch', 'MP Nagar, Bhopal, Madhya Pradesh', '07554001046'),
(47, 'Indore Branch', 'Vijay Nagar, Indore, Madhya Pradesh', '07314001047'),
(48, 'Patna Branch', 'Boring Road, Patna, Bihar', '06124001048'),
(49, 'Chandigarh Branch', 'Sector 17, Chandigarh', '01724001049'),
(50, 'Kochi Branch', 'MG Road, Kochi, Kerala', '04844001050');


INSERT INTO accounts
(account_id, account_type, balance, customer_id, branch_id)
VALUES
(1, 'Savings', 45000.00, 1, 1),
(2, 'Current', 250000.00, 2, 2),
(3, 'Savings', 78500.50, 3, 3),
(4, 'Salary', 62000.00, 4, 1),
(5, 'Fixed Deposit', 500000.00, 5, 4),
(6, 'Savings', 32500.75, 6, 5),
(7, 'Current', 175000.00, 7, 6),
(8, 'Savings', 92000.00, 8, 2),
(9, 'Salary', 55000.00, 9, 7),
(10, 'Savings', 120000.00, 10, 8),
(11, 'Fixed Deposit', 750000.00, 11, 3),
(12, 'Savings', 28000.00, 12, 9),
(13, 'Current', 320000.00, 13, 10),
(14, 'Salary', 68000.00, 14, 1),
(15, 'Savings', 95000.50, 15, 4),
(16, 'Fixed Deposit', 400000.00, 16, 5),
(17, 'Savings', 155000.00, 17, 6),
(18, 'Current', 210000.00, 18, 7),
(19, 'Savings', 48500.00, 19, 8),
(20, 'Salary', 72000.00, 20, 9),
(21, 'Savings', 65000.00, 21, 10),
(22, 'Fixed Deposit', 900000.00, 22, 2),
(23, 'Current', 450000.00, 23, 3),
(24, 'Savings', 38500.00, 24, 4),
(25, 'Salary', 58000.00, 25, 5),
(26, 'Savings', 110000.00, 26, 6),
(27, 'Fixed Deposit', 600000.00, 27, 7),
(28, 'Current', 275000.00, 28, 8),
(29, 'Savings', 82500.00, 29, 9),
(30, 'Salary', 64000.00, 30, 10),
(31, 'Savings', 52000.00, 31, 1),
(32, 'Current', 380000.00, 32, 2),
(33, 'Fixed Deposit', 1200000.00, 33, 3),
(34, 'Savings', 73500.00, 34, 4),
(35, 'Salary', 85000.00, 35, 5),
(36, 'Savings', 42000.00, 36, 6),
(37, 'Current', 195000.00, 37, 7),
(38, 'Fixed Deposit', 550000.00, 38, 8),
(39, 'Savings', 98500.00, 39, 9),
(40, 'Salary', 76000.00, 40, 10),
(41, 'Savings', 145000.00, 41, 1),
(42, 'Current', 520000.00, 42, 2),
(43, 'Fixed Deposit', 850000.00, 43, 3),
(44, 'Savings', 61000.00, 44, 4),
(45, 'Salary', 93000.00, 45, 5),
(46, 'Savings', 87500.00, 46, 6),
(47, 'Current', 290000.00, 47, 7),
(48, 'Fixed Deposit', 1500000.00, 48, 8),
(49, 'Savings', 56000.00, 49, 9),
(50, 'Salary', 81000.00, 50, 10);

INSERT INTO loan
(loan_id, loan_amt, interest_rate, start_date, end_date, customer_id)
VALUES

(1, 2500000.00, 8.50, '2021-01-15', '2041-01-15', 1),
(2, 500000.00, 11.50, '2022-03-10', '2027-03-10', 2),
(3, 1200000.00, 9.25, '2020-06-20', '2030-06-20', 3),
(4, 800000.00, 10.75, '2023-02-01', '2028-02-01', 4),
(5, 4500000.00, 8.25, '2019-11-15', '2044-11-15', 5),
(6, 300000.00, 9.50, '2022-07-12', '2027-07-12', 6),
(7, 1500000.00, 10.25, '2021-09-05', '2031-09-05', 7),
(8, 3500000.00, 8.75, '2020-04-18', '2040-04-18', 8),
(9, 600000.00, 11.25, '2023-05-22', '2028-05-22', 9),
(10, 2000000.00, 9.00, '2021-12-10', '2036-12-10', 10),
(11, 5000000.00, 8.40, '2018-08-15', '2043-08-15', 11),
(12, 250000.00, 12.00, '2022-10-01', '2025-10-01', 12),
(13, 1800000.00, 9.50, '2020-02-14', '2030-02-14', 13),
(14, 750000.00, 10.50, '2023-01-20', '2028-01-20', 14),
(15, 3200000.00, 8.65, '2021-06-01', '2041-06-01', 15),
(16, 400000.00, 9.75, '2022-04-25', '2027-04-25', 16),
(17, 2200000.00, 8.90, '2019-09-10', '2039-09-10', 17),
(18, 950000.00, 11.00, '2023-07-15', '2029-07-15', 18),
(19, 2800000.00, 8.55, '2020-11-20', '2040-11-20', 19),
(20, 550000.00, 10.25, '2022-01-05', '2027-01-05', 20),
(21, 1500000.00, 9.25, '2021-03-15', '2031-03-15', 21),
(22, 6000000.00, 8.35, '2018-05-10', '2043-05-10', 22),
(23, 850000.00, 11.50, '2023-09-01', '2028-09-01', 23),
(24, 1200000.00, 9.75, '2020-07-18', '2030-07-18', 24),
(25, 350000.00, 10.90, '2022-12-12', '2027-12-12', 25),
(26, 4000000.00, 8.60, '2019-04-20', '2039-04-20', 26),
(27, 700000.00, 11.25, '2023-03-15', '2028-03-15', 27),
(28, 2500000.00, 9.00, '2021-08-10', '2036-08-10', 28),
(29, 450000.00, 10.50, '2022-06-05', '2027-06-05', 29),
(30, 1800000.00, 8.95, '2020-12-01', '2035-12-01', 30),
(31, 5000000.00, 8.30, '2018-10-15', '2043-10-15', 31),
(32, 600000.00, 11.75, '2023-04-01', '2028-04-01', 32),
(33, 3000000.00, 9.10, '2021-02-25', '2036-02-25', 33),
(34, 950000.00, 10.25, '2022-09-15', '2029-09-15', 34),
(35, 2200000.00, 8.75, '2020-05-12', '2040-05-12', 35),
(36, 350000.00, 10.75, '2023-06-20', '2028-06-20', 36),
(37, 4500000.00, 8.45, '2019-07-01', '2044-07-01', 37),
(38, 800000.00, 11.00, '2022-11-10', '2027-11-10', 38),
(39, 1700000.00, 9.25, '2021-04-05', '2036-04-05', 39),
(40, 5500000.00, 8.55, '2018-12-20', '2043-12-20', 40),
(41, 2500000.00, 9.00, '2020-03-10', '2035-03-10', 41),
(42, 650000.00, 11.50, '2023-08-15', '2028-08-15', 42),
(43, 3800000.00, 8.70, '2019-02-01', '2039-02-01', 43),
(44, 900000.00, 10.25, '2022-05-20', '2029-05-20', 44),
(45, 2000000.00, 9.15, '2021-10-12', '2036-10-12', 45),
(46, 750000.00, 10.50, '2023-02-18', '2028-02-18', 46),
(47, 4200000.00, 8.40, '2018-06-25', '2043-06-25', 47),
(48, 1100000.00, 9.75, '2022-08-05', '2032-08-05', 48),
(49, 2800000.00, 8.90, '2020-09-15', '2040-09-15', 49),
(50, 500000.00, 11.25, '2023-10-01', '2028-10-01', 50);


INSERT INTO transaction_table
(tran_id, tran_date, amount, tran_type, account_id)
VALUES

(1, '2025-01-05', 15000.00, 'Deposit', 1),
(2, '2025-01-06', 2500.00, 'UPI Payment', 1),
(3, '2025-01-08', 5000.00, 'ATM Withdrawal', 2),
(4, '2025-01-10', 25000.00, 'NEFT Transfer', 3),
(5, '2025-01-12', 3500.00, 'Bill Payment', 4),
(6, '2025-01-15', 10000.00, 'Deposit', 5),
(7, '2025-01-17', 1200.00, 'UPI Payment', 6),
(8, '2025-01-19', 8000.00, 'Withdrawal', 7),
(9, '2025-01-21', 15000.00, 'IMPS Transfer', 8),
(10, '2025-01-23', 2200.00, 'ATM Withdrawal', 9),
(11, '2025-02-01', 20000.00, 'Deposit', 10),
(12, '2025-02-03', 4500.00, 'UPI Payment', 11),
(13, '2025-02-05', 12000.00, 'NEFT Transfer', 12),
(14, '2025-02-07', 3000.00, 'ATM Withdrawal', 13),
(15, '2025-02-09', 7500.00, 'Bill Payment', 14),
(16, '2025-02-11', 18000.00, 'Deposit', 15),
(17, '2025-02-13', 2500.00, 'UPI Payment', 16),
(18, '2025-02-15', 9000.00, 'Withdrawal', 17),
(19, '2025-02-17', 22000.00, 'IMPS Transfer', 18),
(20, '2025-02-19', 1500.00, 'ATM Withdrawal', 19),
(21, '2025-03-01', 30000.00, 'Deposit', 20),
(22, '2025-03-03', 6500.00, 'UPI Payment', 21),
(23, '2025-03-05', 18000.00, 'NEFT Transfer', 22),
(24, '2025-03-07', 4000.00, 'ATM Withdrawal', 23),
(25, '2025-03-09', 5500.00, 'Bill Payment', 24),
(26, '2025-03-11', 12000.00, 'Deposit', 25),
(27, '2025-03-13', 3200.00, 'UPI Payment', 26),
(28, '2025-03-15', 7500.00, 'Withdrawal', 27),
(29, '2025-03-17', 28000.00, 'IMPS Transfer', 28),
(30, '2025-03-19', 2000.00, 'ATM Withdrawal', 29),
(31, '2025-04-01', 25000.00, 'Deposit', 30),
(32, '2025-04-03', 1800.00, 'UPI Payment', 31),
(33, '2025-04-05', 35000.00, 'NEFT Transfer', 32),
(34, '2025-04-07', 5000.00, 'ATM Withdrawal', 33),
(35, '2025-04-09', 4200.00, 'Bill Payment', 34),
(36, '2025-04-11', 16000.00, 'Deposit', 35),
(37, '2025-04-13', 2700.00, 'UPI Payment', 36),
(38, '2025-04-15', 6500.00, 'Withdrawal', 37),
(39, '2025-04-17', 19000.00, 'IMPS Transfer', 38),
(40, '2025-04-19', 3000.00, 'ATM Withdrawal', 39),
(41, '2025-05-01', 40000.00, 'Deposit', 40),
(42, '2025-05-03', 5200.00, 'UPI Payment', 41),
(43, '2025-05-05', 26000.00, 'NEFT Transfer', 42),
(44, '2025-05-07', 4500.00, 'ATM Withdrawal', 43),
(45, '2025-05-09', 6800.00, 'Bill Payment', 44),
(46, '2025-05-11', 22000.00, 'Deposit', 45),
(47, '2025-05-13', 3500.00, 'UPI Payment', 46),
(48, '2025-05-15', 11000.00, 'Withdrawal', 47),
(49, '2025-05-17', 32000.00, 'IMPS Transfer', 48),
(50, '2025-05-19', 2500.00, 'ATM Withdrawal', 49),
(51, '2025-06-01', 18000.00, 'Deposit', 50),
(52, '2025-06-03', 4200.00, 'UPI Payment', 1),
(53, '2025-06-05', 12500.00, 'NEFT Transfer', 5),
(54, '2025-06-07', 2800.00, 'ATM Withdrawal', 10),
(55, '2025-06-09', 7500.00, 'Bill Payment', 15),
(56, '2025-06-11', 35000.00, 'Deposit', 20),
(57, '2025-06-13', 1800.00, 'UPI Payment', 25),
(58, '2025-06-15', 9500.00, 'Withdrawal', 30),
(59, '2025-06-17', 24000.00, 'IMPS Transfer', 35),
(60, '2025-06-19', 3200.00, 'ATM Withdrawal', 40);


SHOW TABLES;
DESC customers;
DESC branches;
DESC accounts;
DESC loan;
DESC transaction_table;

SELECT COUNT(*) AS customer_records FROM customers;
SELECT COUNT(*) AS branch_records FROM branches;
SELECT COUNT(*) AS account_records FROM accounts;
SELECT COUNT(*) AS loan_records FROM loan;
SELECT COUNT(*) AS transaction_records FROM transaction_table;


SELECT * FROM customers;
SELECT * FROM branches;
SELECT * FROM accounts;
SELECT * FROM loan;
SELECT * FROM transaction_table;


