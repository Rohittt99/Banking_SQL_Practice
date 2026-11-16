show databases;
show tables;

use bank;
select * from customers;

select * from accounts;

select * from branches;

select * from loan;

select * from transaction_table;


-- Banking_System_Analysis_Questions

--  Customer Analysis

select count(*) As Total_Customer
from customers;

select * from customers
where customer_id IS NULL
   OR first_name is NULL
   OR last_name IS NULL
   OR email IS NULL
   OR contact_no IS NULL
   OR dob IS NULL
   OR gender IS NULL;
   
select 
    min(Age) AS Youngest_Age,
    max(Age) AS Oldest_Age
from Customers; 

select count(*) as born_before_2000
from customers
where dob<'2000-01-01';

select count(*) as born_after_2000
from customers
where dob>'2000-01-01';

SELECT
    Customer_ID,
    COUNT(Account_ID) AS Total_Accounts
FROM accounts
GROUP BY Customer_ID
HAVING COUNT(Account_ID) > 1;


-- Account Analysis

select 
	Account_Type, count(*) as Total_Accounts
 from accounts
 where Account_Type in ("Savings","Current","Salary")
 group by Account_Type;
 
 select sum(Balance) as Total_Balance 
 from accounts;
 
 select avg(Balance) as Average_Balance
 from accounts;
    
select * from accounts
order by balance desc;

select * from accounts
where Balance is null;

select 
	b.Branch_ID,
	b.Branch_Name,
    count(a.Account_ID) as Total_Accounts
from branches b
inner join accounts a
	on b.Branch_ID = a.Branch_ID
group by
	b.Branch_ID,
    b.Branch_Name
order by
    Total_Accounts desc
limit 1;


-- Transaction Analysis

select sum(amount) as Total_Transaction_Amount 
from transaction_table;

select
	sum(tran_type = 'Deposit') as Total_Deposits,
    sum(tran_type = 'Withdrawal') as Total_Withdrawal,
	sum(tran_type = 'ATM Withdrawal') as Total_ATM_Withdrawal,
	sum(tran_type = 'NEFT Transfer') as Total_NEFT_Transfer,
	sum(tran_type = 'IMPS Transfer') as Total_IMPS_Transfer,
    sum(tran_type = 'UPI Payment') as Total_UPI_Payment,
	sum(tran_type = 'Bill Payment') as Total_Bill_Payment
from transaction_table;

SELECT
    tran_type,
    COUNT(*) AS Highest_Volume_Transactions
FROM transaction_table
GROUP BY tran_type
ORDER BY tran_type DESC
LIMIT 1;

SELECT
    Account_ID,
    COUNT(Tran_ID) AS Total_Transactions
FROM transaction_table
GROUP BY Account_ID
ORDER BY Total_Transactions DESC
LIMIT 1;

select avg(amount) as Average_Transaction_Amount
 from transaction_table;
 
 select * from transaction_table
 where tran_date and amount is null;
 
 
 -- Loan Analysis
 
select sum(loan_amt) as Total_loan_amount
 from loan; 
 
 SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    l.loan_id,
    l.loan_amt
FROM customers c
INNER JOIN loan l
    ON c.customer_id = l.customer_id
ORDER BY l.loan_amt DESC
LIMIT 1;

SELECT
    Loan_ID,
    Customer_ID,
    Loan_Amt,
    Interest_Rate
FROM loan
ORDER BY Interest_Rate DESC
LIMIT 1;

select
	Loan_ID,
    Customer_ID,
    Loan_Amt,
    Interest_Rate,
	Start_Date,
    End_Date
FROM loan
WHERE End_Date >= curdate();

SELECT
    Customer_ID,
    COUNT(Loan_ID) AS Total_Loans
FROM loan
GROUP BY Customer_ID
HAVING COUNT(Loan_ID) > 1;
 
select avg(loan_amt) as Average_Loan_Amount
 from loan;
 
 
 -- Branch Analysis
 
 SELECT
    b.Branch_ID,
    b.Branch_Name,
    COUNT(a.Account_ID) AS Total_Accounts
FROM branches b
INNER JOIN accounts a
    ON b.Branch_ID = a.Branch_ID
GROUP BY
    b.Branch_ID,
    b.Branch_Name
ORDER BY Total_Accounts DESC
LIMIT 1;

SELECT
    b.Branch_ID,
    b.Branch_Name,
    COUNT(DISTINCT a.Customer_ID) AS Total_Customers
FROM branches b
INNER JOIN accounts a
    ON b.Branch_ID = a.Branch_ID
INNER JOIN customers c
    ON a.Customer_ID = c.Customer_ID
GROUP BY
    b.Branch_ID,
    b.Branch_Name
ORDER BY Total_Customers DESC
LIMIT 1;

SELECT
    b.Branch_ID,
    b.Branch_Name,
    COUNT(t.Tran_ID) AS Total_Transactions
FROM branches b
INNER JOIN accounts a
    ON b.Branch_ID = a.Branch_ID
INNER JOIN transaction_table t
    ON a.Account_ID = t.Account_ID
GROUP BY
    b.Branch_ID,
    b.Branch_Name
ORDER BY Total_Transactions DESC
LIMIT 1;

SELECT
    b.Branch_ID,
    b.Branch_Name,
    SUM(l.Loan_Amt) AS Total_Loan_Exposure
FROM branches b
INNER JOIN accounts a
    ON b.Branch_ID = a.Branch_ID
INNER JOIN loan l
    ON a.Customer_ID = l.Customer_ID
GROUP BY
    b.Branch_ID,
    b.Branch_Name
ORDER BY Total_Loan_Exposure DESC
LIMIT 1;








    
