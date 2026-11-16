use bank;
select * from accounts;
select Account_type,sum(balance) as total 
from accounts
group by Account_Type
having total>50000;

select Account_ID,Account_Type,if(balance>50000,"HIGH BALANCE","LOW BALANCE") as Category
from accounts;

select Account_ID,Account_Type,
case
when Balance>50000 then "High"
when Balance>30000 then "Medium"
else "Low"
end as Category
from accounts;


select year(now());
select day(current_date());
select current_time();

select timestampdiff(year,"2022-02-21",current_date());

select * from customers;
select *,timestampdiff(year,DOB,now()) as age from customers;


alter table customers
add column age int;

update customers
set age=timestampdiff(year,DOB,current_date());

set sql_safe_updates=0;


-- Windows Function

-- 1
Select customer_id,Account_ID,Account_Type,Balance,round(avg(Balance)
over(partition by Account_Type)) as Average_Balance
from accounts;

-- 2
Select Account_Type,Balance,dense_rank()
over(partition by Account_Type order by Balance) as R_NO
from accounts;

-- 3
Select Account_Type,Balance,rank()
over(partition by Account_Type order by Balance) as R_NO
from accounts;

-- 4
Select Account_Type,Balance,row_number()
over(partition by Account_Type order by Balance) as R_NO
from accounts;