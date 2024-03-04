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

This project provides SQL queries to perform various tasks such as:
- Retrieving information about available books.
- Listing employee names and salaries.
- Tracking book issuances and returns.
- Displaying statistics such as total book counts by category and branch-wise employee 
  counts.
