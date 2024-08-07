--PROJECT: ADVANCED  SQL QUERIES with JOINS fOR EMPLOYEE and SALES DAT

--INTRODUCTION
--This project demonstrates advanced SQL queries for manipulating and analyzing employee and sales data. 
--The data includes employee information, sales transactions, client spending, and branch details, 
--providing a comprehensive overview of common SQL operations including joins.

--PROBLEM STATEMENT
--We aim to extract meaningful insights from a company's database using more complex queries. 
--Our objectives include
--1. Retrieving detailed employee information.
--2. Summarizing sales data by salesperson and branch.
--3. Analyzing client spending with detailed transaction information.

--DATA MANIPULATION
--1. Find the Total Sales of Each Salesman with Their Names
SELECT employee.first_name,employee.last_name, SUM(Sales_info.sales_amount) AS Total_Sales
FROM Sales_info
JOIN employee  ON Sales_info.salesman_id = employee.emp_id 
GROUP BY employee.first_name, employee.last_name
--EXPLANATION
--This query joins the `sales` and `employees` tables to retrieve the total sales amount for
--each salesman along with their first and last names.

--2. Find the Total Sales for Each Branch
SELECT branch.branch_name, SUM(Sales_info.sales_amount) AS Total_Sales
FROM Sales_info
JOIN employee ON Sales_info.salesman_id = employee.emp_id
JOIN branch ON employee.branch_id = branch.branch_id
GROUP BY branch.branch_name
--EXPLANATION
--This query joins the `sales`, `employees`, and `branches` tables to calculate the total 
--sales amount for each branch.

--3. Find the Total Amount Spent by Each Client with Their Names
SELECT client.client_name, SUM(Sales_info.sales_amount) AS Total_Spent
FROM Sales_info
JOIN client ON Sales_info.client_id = client.client_id
GROUP BY client.client_name;
--EXPLANATION
--This query joins the `sales` and `clients` tables to calculate the total amount of money 
--spent by each client along with their names.

--4. Find Detailed Sales Information for Each Salesman
SELECT employee.first_name,employee.last_name,Sales_info.sales_date,Sales_info.sales_amount,client.client_name
FROM Sales_info
JOIN employee ON Sales_info.salesman_id = employee.emp_id
JOIN client ON Sales_info.client_id = client.client_id;
--EXPLANATION
--This query joins the `sales`, `employees`, and `clients` tables to retrieve detailed sales 
--information including the salesman's name, sale date, sale amount, and client name.

--5. Find All Employees Working in a Specific Branch
SELECT employee.emp_id,employee.first_name,employee.last_name,branch.branch_name
FROM employee
JOIN branch ON employee.branch_id = branch.branch_id
WHERE branch.branch_id = '2';
--EXPLANATION
--This query joins the `employees` and `branches` tables to find all employees working in 'Branch 2

--6. Find the Number of Employees in Each Branch
SELECT branch.branch_name, COUNT(employee.emp_id) AS employee_count
FROM employee
JOIN branch ON employee.branch_id = branch.branch_id
GROUP BY branch.branch_name
--EXPLANATION
--This query joins the `employees` and `branches` tables to count the number 
--of employees in each branch.

--7. Find Employees Average Salary by Branch
SELECT branch.branch_name, AVG(employee.salary) AS average_salary
FROM employee
JOIN branch ON employee.branch_id = branch.branch_id
GROUP BY branch.branch_name;
--EXPLANATION
--This query joins the `employees` and `branches` tables to calculate the average 
--salary of employees in each branch.

--CONCLUSION
--These advanced queries demonstrate how to leverage SQL joins to combine data from multiple tables 
--and extract more complex insights. By understanding and utilizing these operations
--one can perform in-depth data analysis and make informed decisions.

