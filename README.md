# MySQL-Project
# Library Management System
Welcome to the Library Management System project repository. This project is designed to help manage the operations of a library, including tracking information about books, employees, customers, and book issuances and returns.
# Overview
This project consists of a database schema and SQL queries to perform various operations within a library environment. The database includes the following tables:
1. **Branch**: Information about library branches such as branch number, manager ID, address, and contact number.
2. **Employee**: Details of library staff including employee ID, name, position, salary, and the branch they are assigned to.
3. **Books**: Data related to books available in the library including ISBN, title, category, rental price, availability status, author, and publisher.
4. **Customer**: Information about library patrons including customer ID, name, address, and registration date.
5. **IssueStatus**: Records of books issued to customers including issue ID, customer ID, book name, and issue date.
6. **ReturnStatus**: Records of books returned by customers including return ID, customer ID, book name, and return date.

# ***Queries Implemented:***
- Retrieve book title, category, and rental price of available books.
- ist employee names and salaries in descending order of salary.
- Retrieve book titles and corresponding customers who have issued those books.
- Display total count of books in each category.
- Retrieve employee names and positions for employees with salaries above Rs.50,000.
- List customer names who registered before 2022-01-01 and have not issued any books yet.
- Display branch numbers and total count of employees in each branch.
- Display names of customers who issued books in June 2023.
- Retrieve book titles containing "history".
- Retrieve branch numbers along with count of employees for branches having more than 5 
  employees.

  # ***Additional Tasks Implemented***
- Adding a new customer to the customer table.
- Adding issue details to the issuestatus table when a book is issued.
- Finding employees whose salary is less than the average salary of all employees.
- Displaying the name and position of the employee with the highest salary.
- Finding the second largest salary earned by an employee.
- Retrieving details of customers who issued books separately in the years 2021, 2022, 
  2023, and 2024.
- Finding the total number of customers in the customer table.
- Finding the average rental price of books in each category.
- Identifying branches where the average salary of employees is above Rs. 45,000.
- Listing books that have not been issued by any customer.
- Determining the publisher with the highest number of books in the library.
- Implementing before update and before delete triggers to enforce salary constraints in 
  the employee table.

# How to Use
To use this project, you can clone the repository and execute the SQL queries against your database management system.

# Contribution
Feedback and contributions are appreciated! If you have any ideas, suggestions, or find any bugs, feel free to let me know. Your input helps me make this project better for everyone.

# Conclusion
In conclusion, this Library Management System project provides an efficient solution for organizing and managing library resources. Through the use of MySQL and SQL queries, the system effectively handles book management, employee tracking, customer records, and transaction management. With its user-friendly interface and comprehensive features, it streamlines library operations and enhances user experience.

