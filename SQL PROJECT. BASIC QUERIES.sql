-- PROJECT: BASIC SQL QUERIES fOR EMPLOYEE and SALES DATA
--INTRODUCTION
--This project demonstrates basic SQL queries for manipulating and analysing 
--employee and sales data.
--The data include employee information,sales transactions and clients spending,providing a
--comprehensive overview of basic SQL operations.

--PROJECT STATEMENT
--We aim to extract meaningful insights from a company's database. Our objectives include:
--Retrieving employee details.
--Summarizing gender distribution among employees.
-- Calculating total and average salaries.
-- Analyzing client spending.

--DATA MANIPULATION
--1. Find the First and Last Names of All Employee

USE DahelDB
SELECT * FROM employee
SELECT first_name, last_name
FROM employee;
--EXPLANATION: This query retrieves the first and last names of all employees from the `employees` table.

--2. Find All Different Genders
SELECT DISTINCT sex
FROM employee;
--EXPLANATION: This query retrieves a list of all unique gender values in the `employees` table.

--3. Find All Male Employee
SELECT *
FROM employee
WHERE sex = 'M';
--EXPLANATION: This query retrieves all details of male employees

--4. Find All Employees at a Specific Branch
SELECT *
FROM employee
WHERE branch_id = '2';
--EXPLANATION: This query retrieves all employees working at 'Branch 2'

--5. Find Employee IDs and Names Born After 1980
SELECT emp_id, first_name, last_name
FROM employee
WHERE birth_date > '1980-12-31';
--EXPLANATION: This query retrieves the IDs and names of employees born after 1980.

--6. Find Female Employees at Branch 2
SELECT *
FROM employee
WHERE sex = 'F'
  AND branch_id = '2';
  --EXPLANATION: This query retrieves all female employees working at 'Branch 2'.

  --7. Find Employee Who Are Female & Born After 1980 or Make Over 80,000
SELECT *
FROM employee
WHERE (sex = 'F' AND birth_date > '1980-12-31')
   OR salary > 80000;
   --EXPLANATION: This query retrieves employees who are either female and born after 1969 
   --or have a salary over 80,000.

   --8. Find Employees Born Between 1980 and 1985
SELECT *
FROM employee
WHERE birth_date BETWEEN '1980-01-01' AND '1985-12-31';
--EXPLANATION: This query retrieves employees born between January 1, 1980, and December 31, 1985.

--9. Find Employees Named Jim, Alice
SELECT *
FROM employee
WHERE first_name IN ('Jim', 'Alice');
--EXPLANATION: This query retrieves employees with the first names Jim, Alice

--10. Count the Number of Employee
SELECT COUNT(*) AS Number_of_employees
FROM employee;
--EXPLANATION: This query counts the total number of employees

--11. Calculate the Average Salary
SELECT AVG(salary) AS Average_salary
FROM employee;
--EXPLANATION:This query calculates the average salary of employees.

--12. Calculate the Sum of All Employee Salaries
SELECT SUM(salary) AS Total_salaries
FROM employee;
--EXPLANATION: This query calculates the total sum of all employee salaries

--13. Count the Number of Males and Females
SELECT sex, COUNT(*) AS Gender_count
FROM employee
GROUP BY sex
--EXPLANATION: This query counts the number of male and female employees

--CONCLUSION: These queries provide a foundation for analyzing and manipulating employee and sales data.
--By understanding and utilizing these basic SQL operations,
-- one can extract valuable insights and make data-driven decisions.










