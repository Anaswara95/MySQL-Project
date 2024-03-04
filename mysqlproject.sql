create database library;
use library;

create table Branch(
Branch_no int PRIMARY KEY, 
Manager_Id int,
Branch_address varchar(20),
Contact_no int
);

create table Employee(
Emp_Id int PRIMARY KEY, 
Emp_name varchar(20),
Position varchar(20),
Salary int,
Branch_no int,
foreign key (Branch_no) references branch(Branch_no) on delete cascade
);

create table Books(
ISBN varchar(20) PRIMARY KEY,
Book_title varchar(20),
Category varchar(20),
Rental_Price int,
Status varchar(20) default "YES",
Author varchar(20),
Publisher varchar(20)
);

create table Customer(
Customer_Id int PRIMARY KEY,
Customer_name varchar(20),
Customer_address varchar(20),
Reg_date date
);

create table IssueStatus(
Issue_Id int PRIMARY KEY ,
issued_cust int,
foreign key (issued_cust) references customer(customer_id) on delete cascade,
Issue_date date,
isbn_book varchar(20),
foreign key (isbn_book) references books(isbn) on delete cascade
);

create table ReturnStatus(
Return_Id int PRIMARY KEY ,
Return_cust varchar(20),
Return_book_name varchar(20),
Return_date date,
isbn_book2 varchar(20),
foreign key (isbn_book2) references books(isbn) on delete cascade
);

insert into branch values(1,101,'Kochi',999999),
(2,102,'Mumbai',999998),(3,103,'Delhi',999997),
(4,104,'Kolkata',999996),(5,105,'Chennai',999995);

select * from Branch;


insert into employee values(222,'Shahir','Librarian',25000,2),
(213,'Deepak','Library Assistant',22000,3),(224,'Sarah','Coordinator',20000,1),
(234,'Riyas','Cataloger',24000,5),(220,'Riya','Librarian',28000,5),
(205,'Shahid','Library Assistant',30000,4),(210,'Sharan','Cataloger',32000,3),
(242,'Swathy','Coordinator',23000,1),(226,'Abhishek','Librarian',35000,4),
(237,'Hussain','Librarian',38000,2),(218,'Abhijith','Librarian',55000,3),
(215,'Keerthana','Library Assistant',51000,3),(216,'Amol','Librarian',65000,3),
(219,'Nawas','Coordinator',45000,3),(301,'Sunaina','Librarian',55000,2),
(302,'Basheer','Library Assistant',53000,2),(303,'Rafeek','Cataloger',35000,1),
(304,'Vismaya','Coordinator',60000,1),(305,'Rahul','Library Assistant',51000,2),
(306,'Gopal','Coordinator',66000,1),(307,'Vishal','Librarian',33000,2),
(308,'Vimal','Library Assistant',53000,4),(309,'Basil','Coordinator',55000,4),
(310,'Muhamed','Librarian',30000,4),(311,'Prasad','Librarian',70000,5),
(312,'Satheesh','Library Assistant',50000,5),(313,'Mary','Library Assistant',49000,5),
(314,'Mercy','Cataloger',59000,2),(315,'Anzy','Library Assistant',53000,2),
(316,'Anoop','Librarian',33000,2);

select * from Employee;

insert into books values('ISBN13:978-04411','DUNE','SCIENCE FICTION',500,default,'FRANK HERBERT','ACE BOOKS'),
('ISBN13:978-006231','DRIVE','BUSINESS',300,default,'DANIEL H.PINK','RIVERHEAD BOOKS'),
('ISBN13:978-04415','NEUROMANCER','SCIENCE FICTION',500,default,'WILLIAM GIBSON','ACE BOOKS'),
('ISBN13:978-04156','BOSSYPANTS','BIOGRAPHY',4500,default,'TINA FEY','BACK BAY BOOKS'),
('ISBN13:978-81264','OZHICHUVIDUKA','FICTION',450,'NO','SARAH JOSEPH','DC BOOKS'),
('ISBN13:978-8165','NALLAVANNAM','FICTION',200,'NO','C.RADHAKRISHNAN','DC BOOKS'),
('ISBN13:978-81713','AANAKKALLOPILLI','FICTION',350,default,'O.V.VIJAYAN','DC BOOKS'),
('ISBN13:978-00623','SAPIENS','HISTORY',700,'NO','YUVAL NOAH HARARI','HARPER PERENNIAL'),
('ISBN13:978-03075','GONE GIRL','MYSTERY/THRILLER',250,default,'GILLIAN FLYNN','BROADWAY BOOKS'),
('ISBN13:978-17130','SHARIKUM PONNUM','FICTION',550,default,'MUHAMMED BASHEER','DC BOOKS'),
('ISBN13:978006','THE ALCHEMIST','FICTION',800,default,'PAULO COELHO','HARPERONE'),
('ISBN13:978030','THE DAVINCI CODE','MYSTERY/THRILLER',900,default,'DAN BROWN','ANCHOR'),
('ISBN13:978059','HARRY POTTER','FANTASY',800,'NO','J.K.ROWLING','SCHOLASTIC INC'),
('ISBN13:978349','THE HUNGER GAMES','FICTION',600,default,'SUZANNE COLLINS','SCHOLASTIC PRESS'),
('ISBN13:978547','THE HOBBIT','FANTASY',800,default,'J.R.R.TOLKIEN','MARINER BOOKS'),
('ISBN13:978145','STEVE JOBS','BIOGRAPHY',650,default,'WALTER ISAACSON','SIMON & SCHUSTER'),
('ISBN13:978152','BECOMING','BIOGRAPHY',800,default,'MICHELLE OBAMA','CROWN PUBLISHING'),
('ISBN13:978055','A GAME OF THRONES','FANTASY',900,default,'GEORGE R.R. MARTIN','BANTAM'),
('ISBN:7803','THE HISTORY OF LOVE','HISTORY',400,default,'NICOLE KRAUSS','W.W.NORTON&COMPANY'),
('ISBN:781400','THE SECRET HISTORY','HISTORY',600,default,'DONNA TARTT','VINTAGE'),
('ISBN:87055','A BRIEF HISTORY','HISTORY',900,default,'STEPHEN HAWKING','BANTAM');

select * from Books;

insert into customer values(1001,'Adheena','Kerala','2021-05-11'),
(1002,'Shyam','Karnataka','2021-10-22'),(1003,'Deepu','Mumbai','2021-11-10'),
(1004,'Aleesha','kolkata','2021-12-22'),(1005,'Adarsh','Kerala','2022-06-23'),
(1006,'Salman','Delhi','2022-08-10'),(1007,'Rajesh','Chennai','2022-10-27'),
(1008,'Uma','Mumbai','2022-12-23'),(1009,'Sathvik','Chennai','2023-01-11'),
(1010,'Tridev','Delhi','2023-02-10'),(1011,'Aiswarya','Kerala','2023-05-30'),
(1012,'Vijay','Kolkata','2023-07-15'),(1013,'Komal','kolkata','2023-09-23'),
(1014,'Sarsha','Kerala','2023-12-30'),(1015,'Lincy','Chennai','2024-01-08'),
(1016,'Jeweria','Mumbai','2024-02-10'),(1017,'Chadrani','Delhi','2024-02-20');

select * from Customer;

insert into IssueStatus values(001,1003,'2021-11-15','ISBN13:978-04411'),
(002,1005,'2022-07-13','ISBN13:978-006231'),(003,1007,'2022-11-01','ISBN13:978-04415'),
(004,1012,'2021-12-30','ISBN13:978-04156'),(005,1010,'2023-02-15','ISBN13:978-81264'),
(006,1004,'2023-01-05','ISBN13:978-8165'),(007,1016,'2024-02-15','ISBN13:978-81713'),
(008,1007,'2021-11-15','ISBN13:978-00623'),(009,1017,'2024-02-21','ISBN13:978-00623'),
(010,1008,'2023-01-02','ISBN13:978-04411'),(011,1009,'2023-01-30','ISBN13:978-03075'),
(012,1011,'2024-02-11','ISBN13:978-17130'),(013,1005,'2022-11-01','ISBN13:978-17130'),
(014,1014,'2024-02-21','ISBN13:978-04415'),(015,1013,'2023-10-15','ISBN13:978-04411'),
(016,1015,'2024-02-10','ISBN13:978-8165'),(017,1006,'2022-09-10','ISBN13:978-03075'),
(018,1013,'2023-06-06','ISBN13:978-04411'),(019,1014,'2023-06-10','ISBN13:978055'),
(020,1010,'2023-06-22','ISBN13:978547');

select * from IssueStatus;

insert into ReturnStatus values(501,'DEEPU','DUNE','2022-02-28','ISBN13:978-04411'),
(502,'ADARSH','DRIVE','2022-12-30','ISBN13:978-006231'),(503,'RAJESH','NUEROMANCER','2023-04-03','ISBN13:978-04415'),
(504,'VIJAY','BOSSYPANTS','2024-01-20','ISBN13:978-04156'),(505,'TRIDEV','OZHICHUVIDUKA','2023-12-25','ISBN13:978-81264'),
(506,'ALEESHA','NALLAVANNAM','2023-06-30','ISBN13:978-8165'),(507,'JEWERIA','AANAKKALLOPILLI','2024-02-22','ISBN13:978-81713'),
(508,'RAJESH','SAPIENS','2022-11-08','ISBN13:978-00623'),(509,'CHADRANI','SAPIENS','2024-02-21','ISBN13:978-00623'),
(510,'UMA','DUNE','2023-12-01','ISBN13:978-04411'),(511,'SATHVIK','GONE GIRL','2023-02-05','ISBN13:978-03075'),
(512,'AISWARYA','SHARIKUM PONNUM','2024-02-21','ISBN13:978-17130'),(513,'ADARSH','SHARIKUM PONNUM','2023-03-07','ISBN13:978-17130'),
(514,'SARSHA','NEUROMANCER','2024-02-22','ISBN13:978-04415'),(515,'KOMAL','DUNE','2024-02-10','ISBN13:978-04411'),
(516,'LINCY','NALLAVANNAM','2024-02-22','ISBN13:978-8165'),(517,'SALMAN','GONE GIRL','2022-12-31','ISBN13:978-03075'),
(518,'KOMAL','DUNE','2023-10-22','ISBN13:978-04411');

select * from ReturnStatus;

#Retrieve the book title, category, and rental price of all available books.
select book_title,category,rental_price from books where status = 'YES';

#List the employee names and their respective salaries in descending order of salary.
select emp_name,position,salary from employee order by salary desc;

#Retrieve the book titles and the corresponding customers who have issued those books.
select i.issued_cust,b.book_title 
from issuestatus i left join books b
on i.isbn_book = b.isbn;

select i.issued_cust,b.book_title,c.customer_name
from issuestatus i left join books b 
on i.isbn_book = b.isbn 
left join customer c on c.customer_id = i.issued_cust;

#Display the total count of books in each category.
select category, count(category) as count from books group by category;

#Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
select emp_name,position,salary from employee where salary > 50000;

create or replace view empsalary
as select emp_name,position,salary from employee
where salary > 50000;
select * from empsalary;

#List the customer names who registered before 2022-01-01 and have not issued any books yet.
select customer_name,reg_date from customer where reg_date < '2022-01-01';
delimiter $
create procedure get_cust(get_date date)
begin
	select customer_name,reg_date from customer where reg_date < get_date;
end $
delimiter ;
call get_cust('2022-01-01');

select c.customer_id,c.customer_name,c.reg_date,i.issue_id
from customer c left join issuestatus i
on c.customer_id=i.issued_cust
where c.reg_date < '2022-01-01' and i.issue_id is null;

#Display the branch numbers and the total count of employees in each branch.
select branch_no,branch_address from branch;
select branch_no,count(branch_no) as 'count of employees' from employee group by branch_no;

select b.branch_no,b.branch_address,count(e.branch_no) as 'count of employees'
from branch b left join employee e 
on b.branch_no=e.branch_no
group by b.branch_no,b.branch_address;

#Display the names of customers who have issued books in the month of June 2023.
select c.customer_name,i.issue_date
from customer c join issuestatus i
on c.customer_id= i.issued_cust
where issue_date between '2023-06-01' and '2023-06-30';

#Retrieve book_title from book table containing history.
select book_title from books where category = 'History';
select book_title from books 
where book_title like "% History" or book_title like "% History %";

#Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.
create view countemp_5 as
select b.branch_no,b.branch_address,e.emp_name
from branch b join employee e
on b.branch_no=e.branch_no;
select * from countemp_5; 

select branch_no,branch_address,count(emp_name) as"count" 
from countemp_5
group by branch_no 
having count(emp_name)>5;

#To add a new customer to the customer table.
delimiter $
create procedure new_cust(cust_id int,cust_name varchar(20),cust_adress varchar(20),r_date date)
begin
	insert into customer values(cust_id,cust_name,cust_adress,r_date);
end $
delimiter ;

call new_cust(1018,'Nidhi','Chennai',curdate());
select *from customer;

# to add issue details to the issuestatus table when someone issues a book"
delimiter $
create procedure new_issue(new_id int,cust_issued int,issue_date date,isbn_book varchar(20))
begin
	insert into issuestatus values(new_id ,cust_issued,issue_date,isbn_book);
end $
delimiter ;

call new_issue(021,1010,curdate(),'ISBN13:978055');

select * from issuestatus;

#find employees whose salary < the avg salary of all employees.
select avg(salary) as sal_avg from employee;
select * from employee where salary<43266.6667;
select emp_name,salary from employee where salary < (select avg(salary) from employee);

select emp_name,salary,
case
when salary>(select avg(salary) as sal_avg from employee)
then "above average"
else "below average"
end as salary_level from employee;

#dispaly name and position of employee who have the highest salary.
select emp_name, position,salary from employee where salary= (select max(salary) from employee);
 
 
#find the second largest salary earned employee.
select emp_name,salary from employee order by salary desc limit 1 offset  1; 

select max(salary) from employee;
select max(salary) from employee where salary < (select max(salary) from employee); 

select emp_name, salary AS second_largest_salary
from employee
where salary = (select MAX(salary) from employee
where salary < (select MAX(salary) from employee));

#Retrieve the details of customers who have issued books separately in the years 2021, 2022, 2023, and 2024.
create view issue_details as
select c.customer_name,i.issued_cust,i.issue_date,i.isbn_book
from customer c join issuestatus i
on c.customer_id = i.issued_cust;

select * from issue_details; 

delimiter $
create procedure issued_year(issue_year int)
begin
	select customer_name,issue_date,isbn_book from issue_details 
    where year(issue_date) = issue_year
    order by customer_name,issue_date;
end $
delimiter ;

call issued_year(2022);

#Find the total number of customers from customer table.

delimiter $
create procedure count_cust(out cust int)
begin
	select count(customer_name) into cust from customer;
end $
delimiter ;

call count_cust(@result);
select @result;

#Find the average rental price of books in each category.
select category,avg(rental_price) as avg_rental_price from books group by category;



#Identify the branches where the average salary of employees is below Rs. 45,000.
select branch_no,avg(salary) as avg_sal from employee group by branch_no having avg(salary)<45000;




#List the books that have not been issued by any customer.
select b.isbn,b.book_title from books b left join
issuestatus i on b.isbn = i.isbn_book
where i.isbn_book is null;

#Which publisher has the highest number of books in the library.
select publisher,count(*) as total_books
from books group by publisher
order by total_books desc
limit 3;

#create a before update trigger if we try to insert salary < 20000 in the employee table.
delimiter $
create trigger before_update_trigger
before update on employee
for each row
begin
	if new.salary < 20000 then
    signal sqlstate "45000"
    set message_text = "salary cannot be updated to < 20000";
    end if;
end $
delimiter ;

update employee set salary = 15000 where emp_id =222 ;

#create a before delete trigger if we try to delete employee details whose salary is >35000 in the employee table.
delimiter $
create trigger before_delete_trigger
before delete on employee
for each row
begin
	if old.salary > 35000 then
    signal sqlstate "45000"
    set message_text  = "cannot delete the details of employee whose salary > 35000";
    end if;
end $
delimiter ;

delete from employee where emp_id=215;
