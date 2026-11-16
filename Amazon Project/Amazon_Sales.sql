CREATE DATABASE IF NOT EXISTS Amazon_Sales;
show databases;
USE Amazon_Sales;
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


CREATE TABLE Accounts (
	Account_ID INT PRIMARY KEY,
    Account_Type VARCHAR(30),
    Balance DECIMAL(10,2),
    Customer_ID INT,
    Branch_ID INT 
    );
    
CREATE TABLE transaction_table (
    tran_id INT PRIMARY KEY,
    tran_date DATE,
    amount DECIMAL(10,2),
    tran_type VARCHAR(50),
    account_id INT
);

