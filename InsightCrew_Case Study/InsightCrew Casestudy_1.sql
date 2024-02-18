-- Creating a database
CREATE DATABASE InsightCrew;

-- Using the database
USE InsightCrew;


-- This table will store information about each employee, such as their employee ID, name, department, salary, and contact information.
CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    department VARCHAR(255) NOT NULL,
    salary DECIMAL(5 , 2 ),
    contact_info VARCHAR(255)
);

-- This table will track the attendance of employees, including the date and whether the employee was present or absent.
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    employee_id INT,
    date DATE,
    status VARCHAR(255),
    FOREIGN KEY (employee_id)
        REFERENCES employees (employee_id)
);

-- This table will record details about employee leaves, such as the leave ID, employee ID, leave type, start date, and end date.
CREATE TABLE Leaves (
    leave_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    employee_id INT,
    leave_type VARCHAR(255),
    startdate DATE,
    enddate DATE,
    FOREIGN KEY (employee_id)
        REFERENCES employees (employee_id)
);

-- This table will store performance evaluations for employees, including the evaluation ID, employee ID, date of evaluation, and performance rating.
CREATE TABLE Performance_Evaluations (
    evaluation_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    employee_id INT,
    evaluationdate DATE,
    rating INT,
    FOREIGN KEY (employee_id)
        REFERENCES employees (employee_id)
);

-- Viewing 'tables' created
SELECT 
    *
FROM
    employees;

SELECT 
    *
FROM
    attendance;

SELECT 
    *
FROM
    leaves;

SELECT 
    *
FROM
    performance_evaluations;

-- ALTERED AND CHANGED THE TYPE OF THE SALARY FROM DECIMAL TO INTEGER.
ALTER TABLE employees
MODIFY COLUMN salary INT;

-- Inserting Values under each table
INSERT INTO employees (employee_id, name, department, salary, contact_info)
VALUES 
	(1, 'Jackon King', 'IT', 8500.2, 'jacksonling@king.com'),
    (2, 'Udia Usman', 'Finance', 9000.2, 'udiausman@gmail.com'),
    (3, 'Gladys Riches', 'Sales', 2000.3, 'gladys@gmail.com'),
    (4, 'Hannah Sakey', 'Analyst', 3400.4, 'hannan@gmail.com'),
    (5, 'Juestina Young', 'Estate Management', 5000.4, 'young@gmail.com'),
    (6, 'Ashlley Benson', 'Developer', 9600.5, 'benson@gmail.com'),
    (7, 'Juest Richmen', 'Design', 9020.6, 'richman@gmail.com'),
    (8, 'Rita Knows', 'Design', 9210.6, 'knows@gmail.com'),
    (9, 'Adams Say', 'Product Management', 2000.6, 'adam@gmail.com'),
    (10, 'Hyesn Shin', 'HR', 1200.9, 'shin@gmail.com'),
    (11, 'Huesh Muth', 'Product Management', 9200.5, 'muth@gmail.com'),
    (12, 'Saied Yes', 'HR', 9090.5, 'yes@gmail.com'),
    (13, 'Richmand Lung', 'IT', 800.0, 'lung@gmail.com'),
    (14, 'Hentia Oppa', 'HR', 200.0, 'oppa@gmail.com'),
    (15, 'Hues ytd', 'Sales', 3000.5, 'hesd@gmail.com'),
    (16, 'jues opeo', 'HR', 2000.5, 'opea@gmail.com'),
    (17, 'rest iman', 'Analyst', 300.0, 'rest@gmail.com'),
    (18, 'vena kienl', 'Finance', 5000.5, 'vean@gmail.com'),
    (19, 'prot look', 'Sales', 4000.5, 'look@gmail.com'),
    (20, 'yues sayon', 'Sales', 4000.3, 'sayon@gmail.com'),
    (21, 'benh print', 'Developer', 7000.4, 'print@gmail.com'),
    (22, 'gert Usman', 'Analyst', 8000.6, 'gert@gmail.com'),
    (23, 'juest yesh', 'COO', 999.9, 'jeust@gmail.com'),
    (24, 'tesg best', 'CEO', 999.9, 'brest@gmail.com'),
    (25, 'tina mjun', 'Finance', 230.0, 'tina@gmail.com'),
    (26, 'thres shssa', 'Sales', 240.0, 'shssa@gmail.com'),
    (27, 'rest shahsa', 'HR', 100.0, 'shsah@gmail.com'),
    (28, 'esrt popo', 'IT', 800.0, 'popo@gmail.com'),
    (29, 'kopro jrus', 'Finance', 832.6, 'kopor@gmail.com'),
    (30, 'rice pertita', 'Sales', 3400.7, 'rice@gmail.com');
    
-- Viewing employees table
SELECT 
    *
FROM
    employees;

-- Insert attendance records
INSERT INTO attendance (attendance_id, employee_id, date, status)
VALUES
    (1, 17, '2024-02-01', 'Present'),
    (2, 18, '2024-02-01', 'Present'),
    (3, 16, '2024-02-01', 'Present'),
    (4, 15, '2024-02-02', 'Present'),
    (5, 21, '2024-02-02', 'Present'),
    (6, 19, '2024-02-02', 'Present'),
    (7, 20, '2024-02-03', 'Absent'),
    (8, 30, '2024-02-03', 'Present'),
    (9, 28, '2024-02-03', 'Present'),
    (10, 27, '2024-02-04', 'Present'),
    (11, 26, '2024-02-04', 'Absent'),
    (12, 24, '2024-02-04', 'Present'),
    (13, 23, '2024-02-05', 'Present'),
    (14, 22, '2024-02-05', 'Present'),
    (15, 13, '2024-02-05', 'Absent'),
    (16, 11, '2024-02-06', 'Present'),
    (17, 12, '2024-02-06', 'Present'),
    (18, 10, '2024-02-06', 'Present'),
    (19, 9, '2024-02-07', 'Absent'),
    (20, 8, '2024-02-07', 'Absent'),
    (21, 5, '2024-02-07', 'Absent'),
    (22, 6, '2024-02-08', 'Present'),
    (23, 7, '2024-02-08', 'Present'),
    (24, 29, '2024-02-08', 'Present'),
    (25, 14, '2024-02-09', 'Present'),
    (26, 25, '2024-02-09', 'Present'),
    (27, 3, '2024-02-09', 'Present'),
    (28, 4, '2024-02-10', 'Absent'),
    (29, 2, '2024-02-10', 'Absent'),
    (30, 1, '2024-02-10', 'Absent');

-- Viewing the attendance table
SELECT 
    *
FROM
    attendance;

-- Insert leaves records
INSERT INTO leaves (leave_id, employee_id, leave_type, startdate, enddate)
VALUES 
    (1, 3, 'Sick', '2024-02-01', '2024-02-03'),
    (2, 2, 'Annual', '2024-02-05', '2024-02-08'),
    (3, 1, 'Sick', '2024-02-10', '2024-02-12'),
    (4, 5, 'Annual', '2024-02-15', '2024-02-17'),
    (5, 4, 'Sick', '2024-02-20', '2024-02-22'),
    (6, 7, 'Annual', '2024-02-25', '2024-02-27'),
    (7, 8, 'Sick', '2024-03-01', '2024-03-03'),
    (8, 9, 'Annual', '2024-03-05', '2024-03-07'),
    (9, 10,  'Sick', '2024-03-10', '2024-03-12'),
    (10, 6, 'Annual', '2024-03-15', '2024-03-17'),
    (11, 11,'Sick', '2024-03-20', '2024-03-22'),
    (12, 15,'Annual', '2024-03-25', '2024-03-27'),
    (13, 13,'Sick', '2024-03-30', '2024-04-01'),
    (14, 14, 'Annual', '2024-04-05', '2024-04-07'),
    (15, 16, 'Sick', '2024-04-10', '2024-04-12'),
    (16, 12, 'Annual', '2024-04-15', '2024-04-17'),
    (17, 17, 'Sick', '2024-04-20', '2024-04-22'),
    (18, 20,'Annual', '2024-04-25', '2024-04-27'),
    (19, 18, 'Sick', '2024-04-30', '2024-05-02'),
    (20, 19, 'Annual', '2024-05-05', '2024-05-07'),
    (21, 22, 'Sick', '2024-05-10', '2024-05-12'),
    (22, 29, 'Annual', '2024-05-15', '2024-05-17'),
    (23, 21, 'Sick', '2024-05-20', '2024-05-22'),
    (24, 28, 'Annual', '2024-05-25', '2024-05-27'),
    (25, 27, 'Sick', '2024-05-30', '2024-06-01'),
    (26, 25, 'Annual', '2024-06-05', '2024-06-07'),
    (27, 26, 'Sick', '2024-06-10', '2024-06-12'),
    (28, 23, 'Annual', '2024-06-15', '2024-06-17'),
    (29, 24, 'Sick', '2024-06-20', '2024-06-22'),
    (30, 30, 'Annual', '2024-06-25', '2024-06-27');

-- viewing leaves table
SELECT 
    *
FROM
    leaves;

-- inserting  performance evaluations
INSERT INTO performance_evaluations(evaluation_id, employee_id,evaluationdate ,rating)
VALUES 
    (1, 1, '2024-01-01', 4),
    (2, 2, '2024-01-02', 3),
    (3, 3, '2024-01-03', 5),
    (4, 4, '2024-01-04', 4),
    (5, 5, '2024-01-05', 3),
    (6, 6, '2024-01-06', 5),
    (7, 7, '2024-01-07', 4),
    (8, 8, '2024-01-08', 3),
    (9, 9, '2024-01-09', 5),
    (10, 10, '2024-01-10', 4),
    (11, 11, '2024-01-11', 3),
    (12, 12, '2024-01-12', 5),
    (13, 13, '2024-01-13', 4),
    (14, 14, '2024-01-14', 3),
    (15, 15, '2024-01-15', 5),
    (16, 16, '2024-01-16', 4),
    (17, 17, '2024-01-17', 3),
    (18, 18, '2024-01-18', 5),
    (19, 19, '2024-01-19', 4),
    (20, 20, '2024-01-20', 3),
    (21, 21, '2024-01-21', 5),
    (22, 22, '2024-01-22', 4),
    (23, 23, '2024-01-23', 3),
    (24, 24, '2024-01-24', 5),
    (25, 25, '2024-01-25', 4),
    (26, 26, '2024-01-26', 3),
    (27, 27, '2024-01-27', 5),
    (28, 28, '2024-01-28', 4),
    (29, 29, '2024-01-29', 3),
    (30, 30, '2024-01-30', 5);

-- viewing the performance evaluation table
SELECT 
    *
FROM
    performance_evaluations;

-- QUERIES
-- What is the total number of employees?
SELECT COUNT(employee_id) AS total_employees
FROM employees;

-- How many employees are in each department? 
SELECT department, COUNT(employee_id) AS number_of_employees
FROM employees
GROUP BY department;

-- Who are the employees with the highest salary?
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 10;

-- How many employees have a salary above 5,000?
SELECT COUNT(employee_id) AS number_of_employees
FROM employees
WHERE salary > 5000;

-- Who are the employees with the lowest salary?
SELECT *
FROM employees
ORDER BY salary ASC
LIMIT 10;

-- How many days of leave has each employee taken?
SELECT employee_id, COUNT(leave_id) AS days_of_leave
FROM leaves
GROUP BY employee_id;

-- Who has taken the most leave?
SELECT employee_id, COUNT(leave_id) AS total_leave_taken
FROM leaves
GROUP BY employee_id
ORDER BY total_leave_taken DESC
LIMIT 1;

-- How many employees have not taken any leave?
SELECT COUNT(employees.employee_id) AS number_of_employees
FROM employees
LEFT JOIN leaves ON employees.employee_id = leaves.employee_id
WHERE leaves.leave_id IS NULL;

-- What is the average number of leaves taken per employee?
SELECT AVG(num_leaves) AS avg_leaves_per_employee
FROM (
    SELECT employee_id, COUNT(leave_id) AS num_leaves
    FROM leaves
    GROUP BY employee_id
) AS leaves_per_employee;

-- Who are the employees with the longest tenure?
SELECT employee_id, DATEDIFF(MAX(enddate), MIN(startdate)) AS tenure
FROM leaves
GROUP BY employee_id
ORDER BY tenure DESC
LIMIT 1;

-- What is the total number of performance evaluations conducted?	
SELECT COUNT(evaluation_id) AS total_evaluations
FROM performance_evaluations;

-- What is the average performance rating of employees?	
SELECT AVG(rating) AS average_rating
FROM performance_evaluations;

-- Who are the top-performing employees based on performance ratings?	
SELECT employee_id, AVG(rating) AS avg_rating
FROM performance_evaluations
GROUP BY employee_id
ORDER BY avg_rating DESC;

-- How many employees have contact information missing?	
SELECT COUNT(employee_id) AS num_employees_missing_contact_info
FROM employees
WHERE contact_info IS NULL OR contact_info = '';

-- Who are the employees with missing contact information?	
SELECT *
FROM employees
WHERE contact_info IS NULL OR contact_info = '';

-- How many employees have changed departments?	
SELECT COUNT(DISTINCT employee_id) AS num_employees_changed_departments
FROM (
    SELECT employee_id
    FROM employees
    GROUP BY employee_id
    HAVING COUNT(DISTINCT department) > 1
) AS employees_changed_departments;

-- Who are the employees who have changed departments?	
SELECT employee_id, COUNT(DISTINCT department) AS num_departments
FROM employees
GROUP BY employee_id
HAVING COUNT(DISTINCT department) > 1;

-- What is the total number of male and female employees?	
There is no gender in the 'employees' column.

-- Who are the employees with the highest number of contact information updates?
SELECT employee_id, COUNT(*) AS num_updates
FROM (
    SELECT DISTINCT employee_id, contact_info
    FROM employees
    WHERE contact_info IS NOT NULL AND contact_info != ''
) AS contact_updates
GROUP BY employee_id
ORDER BY num_updates DESC
LIMIT 5;





