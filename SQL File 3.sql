use bank;
show tables;

desc customers;
desc accounts;
desc branches;


alter table accounts
add constraint foreign key(branch_id)
references branches (branch_id);

alter table accounts
add constraint foreign key(customer_id)
references customers(cust_id);

alter table loan
add constraint foreign key(customer_id)
references customers (cust_id);

alter table transaction_table
add constraint foreign key(account_id)
references accounts (account_id);
