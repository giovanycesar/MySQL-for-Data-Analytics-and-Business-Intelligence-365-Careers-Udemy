Create DATABASE If not Exists sales;

Use sales;

Create table sales.sales ( 
purchase_number Int Not Null Primary Key Auto_increment,
date_of_purchase Date Not Null,
customer_id Int,
item_code Varchar(10) Not Null
);

Create table sales.customers ( 
customer_id Int,
first_name Varchar(255),
last_name Varchar(255),
email_address Varchar(255),
number_of_complaints Int
);

Select * from sales.sales;

Drop Table sales.customers;
Drop Table sales.sales;
Drop Table sales.items;
Drop Table sales.companies;

CREATE TABLE sales.sales (
    purchase_number INT NOT NULL AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL,
    PRIMARY KEY (purchase_number),
    FOREIGN KEY (customer_id)
        REFERENCES sales.customers (customer_id)
        ON DELETE CASCADE
);

CREATE TABLE sales.customers (
    customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
    PRIMARY KEY (customer_id),
    UNIQUE KEY (email_address)
);

CREATE TABLE sales.items (
    item_code VARCHAR(255),
    item VARCHAR(255),
    unit_price NUMERIC (10,2),
    company_id VARCHAR(255),
    PRIMARY KEY (item_code)
);  

CREATE TABLE sales.companies (
    company_id VARCHAR(255),
    company_name VARCHAR(255),
    headquarters_phone_number INT(12),
    PRIMARY KEY (company_id)
);  

CREATE TABLE sales.customers (
    customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
    PRIMARY KEY (customer_id)
);

Alter Table sales.customers
Add Unique Key (email_address);

Alter Table sales.customers
Drop Index email_address;

CREATE TABLE sales.customers (
    customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
    PRIMARY KEY (customer_id)
);

ALTER TABLE sales.customers
ADD COLUMN gender ENUM('M', 'F') AFTER last_name;

INSERT INTO sales.customers (first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0);

Select * from sales.customers;

Alter Table sales.customers
Change Column number_of_complaints number_of_complaints Int Default 0;

INSERT INTO sales.customers (first_name, last_name, gender)
VALUES ('Peter', 'Figaro', 'M');

Alter Table sales.customers
Alter Column number_of_complaints Drop Default;

CREATE TABLE sales.companies (
    company_id VARCHAR(255),
    company_name VARCHAR(255) Default "X",
    headquarters_phone_number VARCHAR(255),
    PRIMARY KEY (company_id),
    UNIQUE KEY (headquarters_phone_number)
);

DROP TABLE sales.companies;

CREATE TABLE sales.companies (
    company_id Int Auto_increment,
    company_name VARCHAR(255) Not Null,
    headquarters_phone_number VARCHAR(255),
    PRIMARY KEY (company_id)
);

Alter Table sales.companies 
Modify company_name VARCHAR(255) Null;

Alter Table sales.companies 
Change Column company_name company_name VARCHAR(255) Not Null;

Insert Into sales.companies (company_name, headquarters_phone_number)
Values ('Company A', '+1 (202) 555-0196');

Select * from sales.companies;

Alter Table sales.companies 
Modify headquarters_phone_number VARCHAR(255) Null;

Alter Table sales.companies 
Change Column headquarters_phone_number headquarters_phone_number VARCHAR(255) Not Null;

DROP DATABASE IF EXISTS employees

SELECT 
    *
FROM
    employees.employees;
    
SELECT 
    first_name, last_name
FROM
    employees.employees;
    
SELECT 
    dept_no
FROM
    employees.departments;
    
SELECT 
    *
FROM
    employees.departments;
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name = 'Denis';
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name = 'Elvis';
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name = 'Denis' AND gender = 'M';
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name = 'Kellie' AND gender = 'F';
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name = 'Denis'
        OR first_name = 'Elvis';
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name = 'Kellie'
        OR first_name = 'Aruna';
        
SELECT 
    *
FROM
    employees.employees
WHERE
    last_name = 'Denis'
        AND (gender = 'M' OR gender = 'F');
        
SELECT 
    *
FROM
    employees.employees
WHERE
    gender = 'F'
        AND (first_name = 'Kellie' OR first_name = 'Aruna');
        
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name IN ('Cathie' , 'Mark', 'Nathan');
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name IN ('Denis' , 'Elvis');
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name NOT IN ('John' , 'Mark', 'Jacob');
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name LIKE ('Mar%');
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name LIKE ('Ar%');
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name LIKE ('%ar');
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name LIKE ('%ar%');
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name LIKE ('Mar_');
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name NOT LIKE ('%mar%');
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name LIKE ('Mark%');
    
SELECT 
    *
FROM
    employees.employees
WHERE
    hire_date LIKE ('2000%');
    
SELECT 
    *
FROM
    employees.employees
WHERE
    emp_no LIKE ('1000_');
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name NOT LIKE '%Jack%';
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name LIKE '%Jack%';
    
SELECT 
    *
FROM
    employees.salaries
WHERE
    salary BETWEEN '66000' AND '70000';
    
SELECT 
    *
FROM
    employees.employees
WHERE
    emp_no NOT BETWEEN '10004' AND '10012';
    
SELECT 
    *
FROM
    employees.departments
WHERE
    dept_no BETWEEN 'd003' AND 'd006';
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name IS NOT NULL;
    
SELECT 
    *
FROM
    employees.departments
WHERE
    dept_no IS NOT NULL;
    
SELECT 
    *
FROM
    employees.employees
WHERE
    first_name <> 'Mark';
    
SELECT 
    *
FROM
    employees.employees
WHERE
    hire_date >= '2000-01-01'
        AND gender = 'F';
        
SELECT 
    *
FROM
    employees.salaries
WHERE
    salary > 150000;
    
SELECT DISTINCT
    gender
FROM
    employees.employees;
    
SELECT DISTINCT
    hire_date
FROM
    employees.employees;
    
SELECT 
    COUNT(emp_no)
FROM
    employees.employees;
    
SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees.employees;
    
SELECT 
    COUNT(salary)
FROM
    employees.salaries
WHERE
    salary >= 100000;
    
SELECT 
    COUNT(title)
FROM
    employees.titles
WHERE
    title = 'Manager';
    
SELECT 
    COUNT(*)
FROM
    employees.dept_manager;
    
SELECT 
    *
FROM
    employees.employees
ORDER BY first_name , last_name ASC;

SELECT 
    *
FROM
    employees.employees
ORDER BY hire_date DESC;

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees.employees
GROUP BY first_name
ORDER BY first_name;

SELECT 
    salary, COUNT(emp_no) AS emps_with_same_salary
FROM
    employees.salaries
WHERE
    salary > 80000
GROUP BY salary
ORDER BY salary;

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees.employees
GROUP BY first_name
HAVING COUNT(first_name) > 250
ORDER BY first_name;

SELECT 
    emp_no, AVG(salary)
FROM
    employees.salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no;

SELECT 
    first_name, COUNT(first_name)
FROM
    employees.employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name;

SELECT 
    emp_no, COUNT(from_date)
FROM
    employees.dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(from_date) > 1
ORDER BY emp_no;

SELECT 
    emp_no, salary
FROM
    employees.salaries
ORDER BY salary DESC
LIMIT 10;

SELECT 
    *
FROM
    employees.dept_emp
LIMIT 100;

SELECT 
    *
FROM
    employees.employees
ORDER BY emp_no DESC;
    
INSERT INTO employees.employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (999901, '1986-04-21', 'John', 'Smith', 'M', '2011-01-01'); 

INSERT INTO employees.employees (birth_date, emp_no, first_name, last_name, gender, hire_date)
VALUES ('1974-03-26', 999012, 'Patricia', 'Lawrence', 'F', '2005-01-01'); 

UPDATE employees.employees
SET emp_no=999902
WHERE emp_no=9999012;

INSERT INTO employees.employees
VALUES
(
    999903,
    '1977-09-14',
    'Johnathan',
    'Creek',
    'M',
    '1999-01-01'
);

SELECT 
    *
FROM
    employees.titles
ORDER BY emp_no DESC
LIMIT 10;

SET FOREIGN_KEY_CHECKS=0;

INSERT INTO employees.titles (emp_no, title, from_date)
VALUES (999903, 'Senior Engineer', '1997-10-01');

SELECT 
    *
FROM
    employees.dept_emp
ORDER BY emp_no DESC
LIMIT 10;

INSERT INTO employees.dept_emp
VALUES (999903, 'd005', '1997-10-01', '9999-01-01');

SELECT 
    *
FROM
    employees.departments;
    
CREATE TABLE employees.departments_dup (
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

SELECT 
    *
FROM
    employees.departments_dup;
    
INSERT INTO employees.departments_dup (dept_no, dept_name)
Select * from employees.departments;

INSERT INTO employees.departments
VALUES ('d010', 'Business Analysis'); 

SELECT 
    *
FROM
    employees.departments;
    
UPDATE employees.employees 
SET 
    first_name = 'Stella',
    last_name = 'Parkinson',
    birth_date = '1990-12-31',
    gender = 'F'
WHERE
    emp_no = 999901;
    
SELECT 
    *
FROM
    employees.employees
WHERE
    emp_no = 999901;
    
Commit;

SELECT 
    *
FROM
    employees.departments;

SET FOREIGN_KEY_CHECKS=1;

SET SQL_SAFE_UPDATES = 0;

UPDATE employees.departments 
SET 
    dept_name = 'Data Analysis'
WHERE
    dept_no = 'd010';
    
Commit;

SELECT 
    *
FROM
    employees.employees
WHERE
    emp_no = 999903;
    
DELETE FROM employees.employees 
WHERE
    emp_no = 999903;
    
Rollback;

SELECT 
    *
FROM
    employees.departments;

DELETE FROM employees.departments 
WHERE
    dept_no = "d010";

SELECT 
    COUNT(salary)
FROM
    employees.salaries;
    
SELECT 
    COUNT(DISTINCT from_date)
FROM
    employees.salaries;

SELECT 
    COUNT(DISTINCT dept_no)
FROM
    employees.dept_emp;
    
SELECT 
    SUM(salary)
FROM
    employees.salaries
WHERE
    from_date > '1997-01-01';
    
SELECT 
    MAX(salary)
FROM
    employees.salaries;
    
SELECT 
    MIN(salary)
FROM
    employees.salaries;
    
SELECT 
    MAX(emp_no)
FROM
    employees.employees;
    
SELECT 
    MIN(emp_no)
FROM
    employees.employees;
    
SELECT 
    AVG(salary)
FROM
    employees.salaries
WHERE
    from_date > '1997-01-01';
    
SELECT 
    ROUND(AVG(salary), 2)
FROM
    employees.salaries
WHERE
    from_date > '1997-01-01';
    
SELECT 
    *
FROM
    employees.departments_dup
ORDER BY dept_no ASC;
    
ALTER TABLE employees.departments_dup
CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;

INSERT INTO employees.departments_dup(dept_no) VALUES ('d010'), ('d011');

ALTER TABLE employees.departments_dup
ADD COLUMN dept_manager VARCHAR(255) NULL AFTER dept_name;

Commit;

SELECT 
    dept_no,
    IFNULL(dept_name,
            'Department name not provided') as dept_name
FROM
    employees.departments_dup;
    
SELECT 
    dept_no,
    COALESCE(dept_name,
            'Department name not provided') AS dept_name
FROM
    employees.departments_dup;
    
SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_manager, dept_name, 'N/A') AS dept_name
FROM
    employees.departments_dup;
    
SELECT 
    dept_no,
    dept_name,
    COALESCE('Department manager name') AS fake_col
FROM
    employees.departments_dup;
    
SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    employees.departments_dup;
    
SELECT 
    IFNULL(dept_no,
            'N/A') as dept_no,
    IFNULL(dept_name,
            'Department name not provided') as dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    employees.departments_dup;
    
ALTER TABLE employees.departments_dup
DROP COLUMN dept_manager;
  
ALTER TABLE employees.departments_dup
CHANGE COLUMN dept_no dept_no CHAR(4) NULL;

Select * from employees.departments_dup;

INSERT INTO employees.departments_dup (dept_name)
VALUES ('Public Relations'); 

SET SQL_SAFE_UPDATES = 0;

DELETE FROM employees.departments_dup 
WHERE
    dept_no = 'd002'; 
    
DROP TABLE IF EXISTS employees.dept_manager_dup;

CREATE TABLE employees.dept_manager_dup (
    emp_no INT(11) NOT NULL,
    dept_no CHAR(4) NULL,
    from_date DATE NOT NULL,
    to_date DATE NULL
);

INSERT INTO employees.dept_manager_dup
select * from employees.dept_manager;

 

INSERT INTO employees.dept_manager_dup (emp_no, from_date)
VALUES (999904, '2017-01-01'),
(999905, '2017-01-01'),
(999906, '2017-01-01'),
(999907, '2017-01-01');

 

DELETE FROM employees.dept_manager_dup 
WHERE
    dept_no = 'd001';

SELECT 
    *
FROM
    employees.dept_manager_dup
ORDER BY dept_no;

SELECT 
    *
FROM
    employees.departments_dup
ORDER BY dept_no;

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    employees.dept_manager_dup m
        INNER JOIN
    employees.departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

SELECT 
    E.emp_no, E.first_name, E.last_name, M.dept_no, E.hire_date
FROM
    employees.employees E
		JOIN
    employees.dept_manager M ON E.emp_no = M.emp_no
ORDER BY E.emp_no;

Insert employees.dept_manager_dup
Values (110228, 'd003', '1992-03-21', '9999-01-01');

Insert employees.departments_dup
Values ('d009', 'Customer Service');

Select * from employees.dept_manager_dup
Where emp_no = 110228;

SET @@sql_mode = SYS.LIST_DROP(@@sql_mode, 'ONLY_FULL_GROUP_BY');

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    employees.dept_manager_dup m
        INNER JOIN
    employees.departments_dup d ON m.dept_no = d.dept_no
GROUP BY m.emp_no
ORDER BY m.dept_no;

DELETE FROM employees.dept_manager_dup 
WHERE
    emp_no = '110228';
    
DELETE FROM employees.departments_dup 
WHERE
    dept_no = 'd009';
    
Insert into employees.dept_manager_dup 
Values ('110228', 'd003', '1992-03-21', '9999-01-01');

Insert into employees.departments_dup 
Values ('d009', 'Customer Service');

SELECT 
    M.dept_no, M.emp_no, D.dept_name
FROM
    employees.dept_manager_dup M
        LEFT JOIN
    employees.departments_dup D ON M.dept_no = D.dept_no
ORDER BY M.dept_no;

SELECT 
    D.dept_no, M.emp_no, D.dept_name
FROM
    employees.departments_dup D
        LEFT JOIN
    employees.dept_manager_dup M ON D.dept_no = M.dept_no
ORDER BY D.dept_no;

SELECT 
    M.dept_no, M.emp_no, D.dept_name
FROM
    employees.dept_manager_dup M
        LEFT JOIN
    employees.departments_dup D ON M.dept_no = D.dept_no
WHERE
    dept_name IS NULL
ORDER BY M.dept_no;

SELECT 
    *
FROM
    employees.departments_dup;
    
SELECT 
    *
FROM
    employees.dept_manager_dup;
    
SELECT 
    *
FROM
    employees.employees;
    
SELECT 
    *
FROM
    employees.dept_manager;
    
SELECT 
    E.emp_no, E.first_name, E.last_name, M.dept_no, M.from_date
FROM
    employees.employees E
        LEFT JOIN
    employees.dept_manager M ON E.emp_no = M.emp_no
WHERE
    E.last_name = 'Markovitch'
ORDER BY M.dept_no DESC , E.emp_no;

Commit;

SELECT 
    D.dept_no, M.emp_no, D.dept_name
FROM
    employees.dept_manager_dup M
        RIGHT JOIN
    employees.departments_dup D ON D.dept_no = M.dept_no
ORDER BY D.dept_no;

SELECT 
    *
FROM
    employees.departments_dup
ORDER BY dept_no;
    
SELECT 
    *
FROM
    employees.dept_manager_dup
ORDER BY dept_no;

SELECT 
    M.dept_no, M.emp_no, D.dept_name
FROM
    employees.dept_manager_dup M,
    employees.departments_dup D
WHERE
    M.dept_no = D.dept_no
ORDER BY M.dept_no;

SELECT 
    *
FROM
    employees.employees;

SELECT 
    E.emp_no, E.first_name, E.last_name, M.dept_no, E.hire_date
FROM
    employees.employees E,
    employees.dept_manager M
WHERE
    E.emp_no = M.emp_no
ORDER BY E.emp_no;

SELECT 
    E.emp_no, E.first_name, E.last_name, S.salary
FROM
    employees.employees E
        JOIN
    employees.salaries S ON E.emp_no = S.emp_no
WHERE
    S.salary > 145000
ORDER BY E.emp_no;

SELECT 
    E.emp_no, E.first_name, E.last_name, E.hire_date, T.title
FROM
    employees.employees E
		JOIN
    employees.titles T ON E.emp_no = T.emp_no
WHERE
    E.first_name = 'Margareta'
        AND E.last_name = 'Markovitch'
ORDER BY E.emp_no;

SELECT 
    DM.*, D.*
FROM
    employees.dept_manager DM
        CROSS JOIN
    employees.departments D
ORDER BY DM.emp_no , D.dept_no;

SELECT 
    DM.*, D.*
FROM
    employees.dept_manager DM,
    employees.departments D
ORDER BY DM.emp_no , D.dept_no;

SELECT 
    DM.*, D.*
FROM
    employees.dept_manager DM
        JOIN
    employees.departments D
ORDER BY DM.emp_no , D.dept_no;

SELECT 
    DM.*, D.*
FROM
    employees.dept_manager DM
        CROSS JOIN
    employees.departments D
WHERE
    dm.dept_no <> d.dept_no
ORDER BY DM.emp_no , D.dept_no;


SELECT 
    E.*, D.*
FROM
    employees.dept_manager DM
        CROSS JOIN
    employees.departments D
        JOIN
    employees.employees E ON DM.emp_no = E.emp_no
WHERE
    DM.dept_no <> D.dept_no
ORDER BY DM.emp_no , D.dept_no;

SELECT 
    D.*, DM.*
FROM
    employees.departments D
        CROSS JOIN
    employees.dept_manager DM
WHERE
    D.dept_no = 'd009'
ORDER BY D.dept_no;

SELECT 
    D.*, E.*
FROM
    employees.departments D
        CROSS JOIN
    employees.employees E
ORDER BY E.emp_no, D.dept_no
Limit 50;

Commit;

SELECT 
    E.gender, AVG(S.salary)
FROM
    employees.salaries S
        JOIN
    employees.employees E ON S.emp_no = E.emp_no
GROUP BY gender;


SELECT 
    E.first_name,
    E.last_name,
    E.hire_date,
    M.from_date,
    D.dept_name
FROM
    employees.employees E
        JOIN
    employees.dept_manager M ON E.emp_no = M.emp_no
        JOIN
    employees.departments D ON M.dept_no = D.dept_no;
    
SELECT 
    E.first_name,
    E.last_name,
    E.hire_date,
    T.title,
    M.from_date,
    D.dept_name
FROM
    employees.employees E
        JOIN
    employees.dept_manager M ON E.emp_no = M.emp_no
        JOIN
    employees.departments D ON M.dept_no = D.dept_no
        JOIN
    employees.titles T ON E.emp_no = T.emp_no
WHERE
    T.title = 'Manager'
ORDER BY e.emp_no;


SELECT 
    D.dept_name, AVG(S.salary) AS average_salary
FROM
    employees.departments D
        JOIN
    employees.dept_manager M ON D.dept_no = M.dept_no
        JOIN
    employees.salaries S ON M.emp_no = S.emp_no
GROUP BY D.dept_name
HAVING average_salary > 60000
ORDER BY average_salary DESC;

SELECT 
    E.gender, COUNT(E.emp_no) as gender_count
FROM
    employees.employees E
        JOIN
    employees.titles T ON E.emp_no = T.emp_no
WHERE
    T.title = 'Manager'
GROUP BY E.gender;

SELECT 
    E.gender, COUNT(M.emp_no)
FROM
    employees.employees E
        JOIN
    employees.dept_manager M ON E.emp_no = M.emp_no
GROUP BY E.gender;

Drop table if exists employees.employees_dup;

CREATE TABLE employees.employees_dup (
    emp_no INT(11),
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    gender ENUM('M', 'F'),
    hire_date DATE
);

Insert into employees.employees_dup
Select E.*
From employees.employees E
Limit 20;

Select *
From employees.employees_dup;

INSERT INTO employees.employees_dup
VALUES (10001, '1953-09-02', 'Georgi', 'Facello', 'M', '1986-06-26');

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees.employees_dup e
WHERE
    e.emp_no = 10001 
UNION ALL SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    employees.dept_manager m;
    
SELECT 
    *
FROM
    (SELECT 
        e.emp_no,
            e.first_name,
            e.last_name,
            NULL AS dept_no,
            NULL AS from_date
    FROM
        employees.employees e
    WHERE
        last_name = 'Denis' UNION SELECT 
        NULL AS emp_no,
            NULL AS first_name,
            NULL AS last_name,
            dm.dept_no,
            dm.from_date
    FROM
        employees.dept_manager dm) AS a
ORDER BY - a.emp_no DESC;

SELECT 
    E.emp_no, E.first_name, E.last_name
FROM
    employees.employees E
WHERE
    E.emp_no IN (SELECT 
            DM.emp_no
        FROM
            employees.dept_manager DM);

SELECT 
    E.emp_no, E.first_name, E.last_name, E.hire_date
FROM
    employees.employees E
WHERE
    e.hire_date BETWEEN '1990-01-01' AND '1995-01-01' AND E.emp_no IN (SELECT 
            DM.emp_no
        FROM
            employees.dept_manager DM);
            
SELECT 
    DM.emp_no, E.first_name, E.last_name, E.hire_date
FROM
    employees.dept_manager DM
        JOIN
    employees.employees E ON DM.emp_no = E.emp_no;
    
SELECT 
    *
FROM
    employees.dept_manager
WHERE
    emp_no IN (SELECT 
            emp_no
        FROM
            employees.employees
        WHERE
            hire_date BETWEEN '1990-01-01' AND '1995-01-01');

SELECT 
    E.emp_no, E.first_name, E.last_name
FROM
    employees.employees E
WHERE
    EXISTS( SELECT 
            DM.emp_no
        FROM
            employees.dept_manager DM
        WHERE
            E.emp_no = DM.emp_no)
ORDER BY E.emp_no;

SELECT 
    *
FROM
    employees.titles T
WHERE
    T.title = 'Assistant Engineer'
        AND EXISTS( SELECT 
            E.emp_no
        FROM
            employees.employees E
        WHERE
            T.emp_no = E.emp_no);
            
SELECT 
    *
FROM
    employees.employees E
WHERE
    EXISTS( SELECT 
            *
        FROM
            employees.titles T
        WHERE
            T.emp_no = E.emp_no
                AND T.title = 'Assistant Engineer');
                
SELECT 
    A.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    employees.dept_manager
                WHERE
                    emp_no = 110022) AS manager_ID
    FROM
        employees.employees e
    JOIN employees.dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no <= 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS A 
UNION SELECT 
    B.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    employees.dept_manager
                WHERE
                    emp_no = 110039) AS manager_ID
    FROM
        employees.employees e
    JOIN employees.dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no > 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no
    LIMIT 20) AS B;
    
DROP TABLE IF EXISTS employees.emp_manager;



CREATE TABLE employees.emp_manager (
    emp_no INT(11) NOT NULL,
    dept_no CHAR(4) NULL,
    manager_no INT(11) NOT NULL
);

Insert INTO employees.emp_manager SELECT
U.*
FROM (SELECT 
    A.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    employees.dept_manager
                WHERE
                    emp_no = 110022) AS manager_ID
    FROM
        employees.employees e
    JOIN employees.dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no <= 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS A UNION SELECT 
    B.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    employees.dept_manager
                WHERE
                    emp_no = 110039) AS manager_ID
    FROM
        employees.employees e
    JOIN employees.dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no > 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no
    LIMIT 20) AS B UNION SELECT 
    C.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    employees.dept_manager
                WHERE
                    emp_no = 110039) AS manager_ID
    FROM
        employees.employees e
    JOIN employees.dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no = 110022
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS C UNION SELECT 
    D.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    employees.dept_manager
                WHERE
                    emp_no = 110022) AS manager_ID
    FROM
        employees.employees e
    JOIN employees.dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no = 110039
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS D) AS U;
    
SELECT 
    *
FROM
    employees.emp_manager;
    
SELECT 
    E2.*
FROM
    employees.emp_manager E1
        JOIN
    employees.emp_manager E2 ON E1.emp_no = E2.manager_no;
    
SELECT 
    E1.emp_no, E1.dept_no, E2.manager_no
FROM
    employees.emp_manager E1
        JOIN
    employees.emp_manager E2 ON E1.emp_no = E2.manager_no;
    
SELECT 
    E1.*
FROM
    employees.emp_manager E1
        JOIN
    employees.emp_manager E2 ON E1.emp_no = E2.manager_no
WHERE
    E2.emp_no IN (SELECT 
            manager_no
        FROM
            employees.emp_manager);
            
Select * from employees.dept_emp;

SELECT @@sql_mode;

SET SESSION sql_mode = (SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));

SELECT 
    emp_no, from_date, to_date, COUNT(emp_no) AS Num
FROM
    employees.dept_emp
GROUP BY emp_no
HAVING Num > 1;

CREATE OR REPLACE VIEW employees.v_dept_emp_latest_date AS
    SELECT 
        emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
    FROM
        employees.dept_emp
    GROUP BY emp_no;
    
SELECT 
    EM.emp_no, AVG(S.salary)
FROM
    employees.emp_manager EM
        JOIN
    employees.salaries S ON EM.emp_no = S.emp_no
    Group by EM.emp_no;
    
CREATE OR REPLACE VIEW employees.v_manager_avg_salary AS SELECT 
    ROUND(AVG(S.salary), 2) AS avg_salary
FROM
    employees.dept_manager DM
        JOIN
    employees.salaries S ON DM.emp_no = S.emp_no;

Commit;

Drop Procedure If Exists employees.select_employees;

Delimiter $$

Create procedure employees.select_employees ()
Begin
 Select * From employees.employees
 Limit 1000;
End$$

Delimiter ;

Call employees.select_employees();

Drop Procedure If Exists employees.avg_salary;

Delimiter $$

Create procedure employees.avg_salary()
Begin
 Select Round(AVG(salary),2) avg_salary
 From employees.salaries;
End$$

Delimiter ;

Call employees.avg_salary();

Drop Procedure employees.select_employees;

Drop Procedure If Exists employees.emp_salary;

Delimiter $$

Create procedure employees.emp_salary(in p_emp_no Integer)
Begin
 Select E.emp_no, E.first_name, E.last_name, S.salary, S.from_date, S.to_date 
 From employees.employees E
 Join
 employees.salaries S on E.emp_no = S.emp_no
 Where E.emp_no = p_emp_no;
End$$

Delimiter ;

Drop Procedure If Exists employees.emp_avg_salary;

Delimiter $$

Create procedure employees.emp_avg_salary(in p_emp_no Integer)
Begin
 Select E.emp_no, E.first_name, E.last_name, Round(AVG(S.salary), 2)
 From employees.employees E
 Join
 employees.salaries S on E.emp_no = S.emp_no
 Where E.emp_no = p_emp_no;
End$$

Delimiter ;

Call employees.emp_avg_salary(11300);

Drop Procedure If Exists employees.emp_avg_salary_out;

Delimiter $$

Create procedure employees.emp_avg_salary_out(in p_emp_no Integer, out p_avg_salary Decimal(10,2))
Begin
 Select AVG(S.salary) Into p_avg_salary
 From employees.employees E
 Join
 employees.salaries S on E.emp_no = S.emp_no
 Where E.emp_no = p_emp_no;
End$$

Delimiter ;

Drop Procedure If Exists employees.emp_info;

Delimiter $$

Create procedure employees.emp_info(in p_first_name Varchar(255), in p_last_name Varchar(255), out p_emp_no Integer)
Begin
 Select emp_no Into p_emp_no
 From employees.employees
 Where first_name = p_first_name And last_name = p_last_name;
End$$

Delimiter ;

Select * from employees.employees;

set @v_avg_salary = 0;
call employees.emp_avg_salary_out(11300, @v_avg_salary);
select @v_avg_salary;

set @v_emp_no = 0;
call employees.emp_info('Aruna', 'Journel', @v_emp_no);
select @v_emp_no;

Drop function If Exists employees.f_emp_avg_salary;

Delimiter $$

Create function employees.f_emp_avg_salary(p_emp_no Integer) Returns Decimal (10,2)
Deterministic
Begin
Declare v_avg_salary Decimal (10,2);

SELECT 
    AVG(S.salary)
INTO v_avg_salary FROM
    employees.employees E
        JOIN
    employees.salaries S ON E.emp_no = S.emp_no
WHERE
    E.emp_no = p_emp_no;
    
Return v_avg_salary;
End$$

Delimiter ;

Select employees.f_emp_avg_salary(11300);

Drop Function If Exists employees.emp_info;

Delimiter $$

Create Function employees.emp_info(p_first_name Varchar(255), p_last_name Varchar(255)) Returns Decimal (10,2)
Deterministic
Begin

Declare v_max_from_date DATE;
Declare v_salary DECIMAL (10,2);

SELECT 
    MAX(S.from_date)
INTO v_max_from_date FROM
    employees.employees E
        JOIN
    employees.salaries S ON E.emp_no = S.emp_no
WHERE
    e.first_name = p_first_name
        AND e.last_name = p_last_name;

SELECT 
    S.salary
INTO v_salary FROM
    employees.employees E
        JOIN
    employees.salaries S ON E.emp_no = S.emp_no
WHERE
    e.first_name = p_first_name
        AND e.last_name = p_last_name
        AND s.from_date = v_max_from_date;
    
Return v_salary;
End$$

Delimiter ;

Select employees.emp_info('Aruna', 'Journel');

Set @v_emp_no = 11300;

Use employees;

SELECT 
    emp_no, first_name, last_name, F_EMP_AVG_SALARY(@v_emp_no) as avg_salary
FROM
    employees
WHERE
    emp_no = @v_emp_no;
    
Select v_avg_salary;

Set @s_var1= 3;
Select @s_var1;

Set Global max_connections = 1000;

Set @@global.max_connections = 1;

Set @var1 = 'Diana';
Select @var1;

Set @v_emp_no = 10004;

Select emp_no, first_name, last_name, hire_date From employees.employees
Where emp_no = @v_emp_no;

Commit;

DROP TRIGGER before_employees_insert;

Use employees;

DELIMITER $$

CREATE TRIGGER before_employees_insert
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN 
	DECLARE v_today Date;
	SELECT DATE_FORMAT(SYSDATE(), '%y-%m-%d') INTO v_today;
    
	IF NEW.hire_date > v_today Then
		SET 
			NEW.hire_date = v_today;
    END IF;
    
END $$

DELIMITER ;

INSERT INTO employees.employees VALUES ('00000', '1998-06-15', 'Giovany', 'Almeida', 'M', '2026-05-24');

Select * from employees.employees;

DELIMITER $$

DELETE FROM employees.employees 
WHERE
    emp_no = 00000;

Rollback;

SELECT 
    *
FROM
    employees.employees
WHERE
    hire_date > '2000-01-01';

Create Index i_hire_date on employees.employees(hire_date);

SELECT 
    *
FROM
    employees.employees
WHERE
    first_name = 'Georgi'
        AND last_name = 'Facello';

Create Index i_composite on employees.employees(first_name, last_name);

Show Index From employees From employees;

DROP INDEX i_hire_date ON employees.employees;

ALTER TABLE employees
DROP INDEX i_hire_date;

SELECT 
    *
FROM
    employees.salaries
WHERE
    salary > 89000
ORDER BY salary DESC;

Create Index i_salary on employees.salaries(salary);

SELECT 
    *
FROM
    employees.dept_emp
WHERE
    from_date > '1989-01-01';

Create Index i_from_date on employees.dept_emp(from_date);

Create Index i_composite_salary on employees.salaries(emp_no, salary);

SELECT 
    emp_no,
    first_name,
    last_name,
    CASE
        WHEN gender = 'M' THEN 'Male'
        ELSE 'Female'
    END AS gender
FROM
    employees.employees;
    
    
SELECT 
    emp_no,
    first_name,
    last_name,
    CASE gender
        WHEN 'M' THEN 'Male'
        ELSE 'Female'
    END AS gender
FROM
    employees.employees;
    
SELECT 
    E.emp_no,
    E.first_name,
    E.last_name,
    CASE
        WHEN DM.emp_no IS NOT NULL THEN 'Manager'
        ELSE 'Employee'
    END AS is_manager
FROM
    employees.employees E
        LEFT JOIN
    employees.dept_manager DM ON E.emp_no = DM.emp_no
WHERE
    E.emp_no > 109990;
    
SELECT 
    emp_no,
    first_name,
    last_name,
    IF(gender = 'M', 'Male', 'Female') AS gender
FROM
    employees.employees;
    
SELECT 
    DM.emp_no,
    E.first_name,
    E.last_name,
    MAX(S.salary) - MIN(S.salary) AS salary_difference,
    CASE
        WHEN MAX(S.salary) - MIN(S.salary) > 30000 THEN 'Salary was raised by more than $30,000'
        WHEN MAX(S.salary) - MIN(S.salary) BETWEEN 20000 AND 30000 THEN 'Salary was raised by more than $20,000 but  less than $30,000'
        ELSE 'Salary was raised by less than $20,000'
    END AS salary_increase
FROM
    employees.dept_manager DM
        JOIN
    employees.employees E ON DM.emp_no = E.emp_no
        JOIN
    employees.salaries S ON S.emp_no = DM.emp_no
GROUP BY S.emp_no;

SELECT 
    DM.emp_no,
    E.first_name,
    E.last_name,
    MAX(S.salary) - MIN(S.salary) AS salary_difference,
    IF(MAX(S.salary) - MIN(S.salary) > 30000,
        'Salary was raised by more than $30,000',
        'Salary was NOT raised by more then $30,000') AS salary_increase
FROM
    employees.dept_manager DM
        JOIN
    employees.employees E ON DM.emp_no = E.emp_no
        JOIN
    employees.salaries S ON S.emp_no = DM.emp_no
GROUP BY S.emp_no;

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    CASE
        WHEN MAX(de.to_date) > SYSDATE() THEN 'Is still employed'
        ELSE 'Not an employee anymore'
    END AS current_employee
FROM
    employees.employees e
        JOIN
    employees.dept_emp de ON de.emp_no = e.emp_no
GROUP BY de.emp_no
LIMIT 100;

SELECT 
    *
FROM
    employees.dept_emp;

SELECT 
    E.emp_no,
    E.first_name,
    E.last_name,
    CASE
        WHEN DM.emp_no IS NOT NULL THEN 'Manager'
        ELSE 'Employee'
    END AS is_manager
FROM
    employees.employees E
        LEFT JOIN
    employees.dept_manager DM ON E.emp_no = DM.emp_no
WHERE
    E.emp_no > 10005;
    
SELECT 
    DM.emp_no,
    E.first_name,
    E.last_name,
    E.hire_date,
    MIN(S.salary) AS min_salary,
    MAX(S.salary) AS max_salary,
    MAX(S.salary) - MIN(S.salary) AS salary_difference,
    CASE
        WHEN MAX(S.salary) - MIN(S.salary) < 10000 THEN 'Insignificant'
        WHEN MAX(S.salary) - MIN(S.salary) > 10000 THEN 'Significant'
        ELSE 'Salary decrease'
    END AS salary_raise
FROM
    employees.dept_manager DM
        JOIN
    employees.employees E ON DM.emp_no = E.emp_no
        JOIN
    employees.salaries S ON S.emp_no = DM.emp_no
WHERE
    DM.emp_no > 10005
GROUP BY s.emp_no , e.first_name , e.last_name , e.hire_date
ORDER BY DM.emp_no ASC;

SELECT 
    E.emp_no,
    E.first_name,
    E.last_name,
    MAX(DE.to_date),
    IF(MAX(DE.to_date) >= '2025-01-01',
        'Currently working',
        'No longer with the company') AS current_status
FROM
    employees.employees E
        JOIN
    employees.dept_emp DE ON E.emp_no = DE.emp_no
GROUP BY E.emp_no , E.first_name , E.last_name;

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    CASE
        WHEN MAX(de.to_date) >= '2025-01-01' THEN 'Currently working'
        ELSE 'No longer with the company'
    END AS current_status
FROM
    employees e
        JOIN
    dept_emp de ON de.emp_no = e.emp_no
GROUP BY e.emp_no , e.first_name , e.last_name;

SELECT 
    emp_no, salary, row_number () over (partition by emp_no order by salary Desc) as row_num
FROM
    employees.salaries;
    
SELECT 
    emp_no, salary, row_number () over (order by salary Desc) as row_num
FROM
    employees.salaries;
    
Select emp_no, dept_no, row_number () over (order by emp_no Asc) as row_num from employees.dept_manager;

SELECT 
emp_no,
first_name,
last_name,
row_number () over (partition by first_name order by last_name Asc) as row_num
FROM
    employees.employees;
    
Select emp_no, dept_no, row_number () over (order by emp_no Desc) as row_num from employees.dept_manager;

SELECT 
emp_no,
first_name,
last_name,
row_number () over (partition by last_name order by emp_no Asc) as row_num
FROM
    employees.employees;
    
SELECT 
emp_no,
salary,
#row_number () over () as row_num1,
row_number () over (partition by emp_no) as row_num2,
row_number () over (partition by emp_no order by salary Desc) as row_num3
#row_number () over (order by salary Desc) as row_num4
FROM
    employees.salaries;
    
Select 
DM.emp_no, 
S.salary, 
row_number () over () as row_num1, 
row_number () over (partition by DM.emp_no order by S.salary Asc) as row_num2 
from employees.dept_manager DM Join employees.salaries S on DM.emp_no = S.emp_no
ORDER BY row_num1, DM.emp_no, salary ASC;

Select 
DM.emp_no, 
S.salary, 
row_number () over (partition by DM.emp_no) as row_num1,
row_number () over (order by DM.emp_no, S.salary Desc) as row_num2  
from employees.dept_manager DM Join employees.salaries S on DM.emp_no = S.emp_no;

SELECT
dm.emp_no,
    salary,
    ROW_NUMBER() OVER (PARTITION BY emp_no ORDER BY salary ASC) AS row_num1,
    ROW_NUMBER() OVER (PARTITION BY emp_no ORDER BY salary DESC) AS row_num2   
FROM
employees.dept_manager dm
    JOIN 
employees.salaries s ON dm.emp_no = s.emp_no;

SELECT
ROW_NUMBER() OVER () AS row_num1,
T.emp_no,
T.title,
S.salary,
ROW_NUMBER() OVER (PARTITION BY T.emp_no ORDER BY salary DESC) AS row_num2   
FROM
employees.titles T
    JOIN 
employees.salaries S ON T.emp_no = S.emp_no
Where T.title = 'Staff' and T.emp_no < 10006
Order by T.emp_no, salary, row_num1 Asc;

SELECT
T.emp_no,
T.title,
S.salary,
ROW_NUMBER() OVER (PARTITION BY T.emp_no ORDER BY salary ASC) AS row_num1,
ROW_NUMBER() OVER (PARTITION BY T.emp_no ORDER BY salary DESC) AS row_num2   
FROM
employees.titles T
    JOIN 
employees.salaries S ON T.emp_no = S.emp_no
Where T.title = 'Staff' and T.emp_no < 10006
Order by T.emp_no, salary, row_num1 Asc;

SELECT
emp_no,
salary,
ROW_NUMBER() OVER W AS row_num1 
from employees.salaries
Window W as (PARTITION BY emp_no ORDER BY salary Desc);

SELECT
emp_no,
first_name,
last_name,
ROW_NUMBER() OVER W AS row_num1
FROM
employees.employees
Window W as (PARTITION BY first_name ORDER BY emp_no ASC);

Select a.emp_no, a.salary as max_salary from (
Select emp_no, salary, ROW_NUMBER() OVER w AS row_num
from employees.salaries
Window w as (PARTITION BY emp_no ORDER BY salary DESC)) a 
Where a.row_num = 1;

Select a.emp_no, Min(salary) as min_salary from (
Select emp_no, salary, ROW_NUMBER() OVER w AS row_num
from employees.salaries
Window w as (PARTITION BY emp_no ORDER BY salary Asc)) a 
Group by a.emp_no;

Select a.emp_no, Min(salary) as min_salary from (
Select emp_no, salary, ROW_NUMBER() OVER (PARTITION BY emp_no ORDER BY salary Asc) AS row_num
from employees.salaries) a 
Group by a.emp_no;

SELECT 
    a.emp_no, MIN(salary) AS min_salary
FROM
    (SELECT 
        emp_no, salary
    FROM
        employees.salaries) a
GROUP BY a.emp_no;

Select a.emp_no, a.salary as max_salary from (
Select emp_no, salary, ROW_NUMBER() OVER w AS row_num
from employees.salaries
Window w as (PARTITION BY emp_no ORDER BY salary DESC)) a 
Where a.row_num = 1;

Select a.emp_no, a.salary as max_salary from (
Select emp_no, salary, ROW_NUMBER() OVER w AS row_num
from employees.salaries
Window w as (PARTITION BY emp_no ORDER BY salary DESC)) a 
Where a.row_num = 2;

SELECT 
    emp_no, MIN(salary)
FROM
    employees.salaries
GROUP BY emp_no;

Select a.emp_no, Min(salary) as min_salary from (
Select S.emp_no, S.salary, ROW_NUMBER() OVER w AS row_num
from employees.salaries S Join employees.dept_manager DM on S.emp_no = DM.emp_no 
Window w as (PARTITION BY S.emp_no ORDER BY S.salary Asc)) a 
Group by a.emp_no;

SELECT 
    S.emp_no, MIN(S.salary) AS min_salary
FROM
    employees.salaries S
        JOIN
    employees.dept_manager DM ON S.emp_no = DM.emp_no
GROUP BY S.emp_no;

Select emp_no, salary, Rank() OVER w AS rank_num
from employees.salaries
Where emp_no = 11839
Window w as (PARTITION BY emp_no ORDER BY salary DESC);

Select emp_no, salary, dense_rank() OVER w AS rank_num
from employees.salaries
Where emp_no = 11839
Window w as (PARTITION BY emp_no ORDER BY salary DESC);

Select emp_no, salary, row_number() OVER w AS rank_num
from employees.salaries
Where emp_no = 10560
Window w as (PARTITION BY emp_no ORDER BY salary DESC);

SELECT 
    dm.emp_no, (COUNT(salary)) AS no_of_salary_contracts
FROM
    employees.dept_manager dm
        JOIN
    employees.salaries s ON dm.emp_no = s.emp_no
GROUP BY emp_no
ORDER BY emp_no;

Select emp_no, salary, rank() OVER w AS rank_num
from employees.salaries
Where emp_no = 10560
Window w as (PARTITION BY emp_no ORDER BY salary DESC);

Select emp_no, salary, dense_rank() OVER w AS rank_num
from employees.salaries
Where emp_no = 10560
Window w as (PARTITION BY emp_no ORDER BY salary DESC);


Select emp_no, salary, row_number() OVER w AS order_num
from employees.salaries
Where emp_no = 10002
Window w as (PARTITION BY emp_no ORDER BY salary DESC);

Select dm.dept_no, 
dp.dept_name, 
dm.emp_no, 
rank() over w as department_salary_ranking, 
s.salary,
s.from_date as salary_from_date, 
s.to_date as salary_to_date, 
dm.from_date as dept_manager_from_date, 
dm.to_date as dept_manager_to_date
from employees.dept_manager dm Join employees.departments dp on dp.dept_no = dm.dept_no
Join employees.salaries s on s.emp_no = dm.emp_no And s.from_date between dm.from_date And dm.to_date 
And s.to_date between dm.from_date And dm.to_date
Window w as (Partition by dm.dept_no order by s.salary Desc);

SELECT 
    *
FROM
    employees.employees;

Select e.emp_no, s.salary, rank() over w as salary_ranking 
from employees.employees e Join employees.salaries s on e.emp_no = s.emp_no
where e.emp_no between 10500 and 10600
Window w as (Partition by e.emp_no order by s.salary Desc); 

Select e.emp_no, s.salary, dense_rank() over w as salary_ranking, e.hire_date, s.from_date,
    (YEAR(s.from_date) - YEAR(e.hire_date)) AS years_from_start 
from employees.employees e Join employees.salaries s on e.emp_no = s.emp_no
where e.emp_no between 10500 and 10600
Having years_from_start >= 5
Window w as (Partition by e.emp_no order by s.salary Desc); 


Select e.emp_no, rank() over w as employee_salary_ranking, s.salary
from employees.employees e Join employees.salaries s on e.emp_no = s.emp_no
where e.emp_no between 10001 and 10006
Window w as (Partition by e.emp_no order by s.salary Desc); 

SELECT 
    e.emp_no, 
    DENSE_RANK() OVER w AS employee_salary_ranking, 
    s.salary, 
    e.hire_date, 
    s.from_date
FROM 
    employees.employees e 
JOIN 
    employees.salaries s 
    ON e.emp_no = s.emp_no
WHERE 
    e.emp_no BETWEEN 10001 AND 10003 AND YEAR(s.from_date) < 2000 
    WINDOW w AS (PARTITION BY e.emp_no ORDER BY s.salary DESC)
ORDER BY 
    e.emp_no ASC;



SELECT 
    e.emp_no,
    DENSE_RANK() OVER w as employee_salary_ranking,
    s.salary,
    e.hire_date,
    s.from_date
FROM
	employees.employees e 
		JOIN 
    employees.salaries s ON s.emp_no = e.emp_no
    AND s.from_date < '2000-01-01'
WHERE e.emp_no BETWEEN 10001 AND 10003
WINDOW w as (PARTITION BY e.emp_no ORDER BY s.salary DESC)
ORDER BY e.emp_no ASC;

Select emp_no, salary,
Lag(salary) Over w as previous_salary,
Lead(salary) Over w as next_salary,
salary - Lag(salary) Over w as diff_salary_current_previous,
Lead(salary) Over w - salary as diff_salary_next_current
from employees.salaries Where emp_no = 10001 Window w As (order by salary Asc);

SELECT 
    emp_no,
    salary,
    Lag(salary) Over w as previous_salary,
	Lead(salary) Over w as next_salary,
	salary - Lag(salary) Over w as diff_salary_current_previous,
	Lead(salary) Over w - salary as diff_salary_next_current
FROM
    employees.salaries
WHERE emp_no BETWEEN 10500 AND 10600 AND salary > 80000
WINDOW w as (Partition by emp_no ORDER BY salary Asc);

SELECT 
    emp_no,
    salary,
    Lag(salary) Over w as previous_salary,
    Lag(salary, 2) Over w as preceding_previous_salary, 
	Lead(salary) Over w as next_salary,
    Lead(salary, 2) Over w as subsequent_next_salary
FROM
    employees.salaries
WINDOW w as (Partition by emp_no ORDER BY salary Asc)
Limit 1000;

SELECT 
    emp_no,
    salary,
    Lag(salary) Over w as previous_salary,
	Lead(salary) Over w as next_salary,
	salary - Lag(salary) Over w as diff_salary_current_previous,
	Lead(salary) Over w - salary as diff_salary_next_current
FROM
    employees.salaries
WHERE emp_no BETWEEN 10003 AND 10008 AND salary < 70000
WINDOW w as (Partition by emp_no ORDER BY salary Asc);

SELECT 
    emp_no,
    salary,
    Lag(salary, 3) Over w as _before_previous_salary, 
    Lead(salary, 3) Over w as _after_next_salary
FROM
    employees.salaries
WINDOW w as (Partition by emp_no ORDER BY salary Asc)
Limit 100;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

SELECT 
    s1.emp_no, s.salary, s.from_date, s.to_date
FROM
    employees.salaries s
        JOIN
    (SELECT 
        emp_no, MAX(from_date) AS from_date
    FROM
        employees.salaries
    GROUP BY emp_no) s1 ON s.emp_no = s1.emp_no
WHERE
    s.to_date > SYSDATE()
        AND s.from_date = s1.from_date;

SELECT 
    *
FROM
    employees.employees;

SELECT 
    s1.emp_no, s.salary, s.from_date, s.to_date
FROM
    employees.salaries s
        JOIN
    (SELECT 
        emp_no, MIN(from_date) AS from_date
    FROM
        employees.salaries
    GROUP BY emp_no) s1 ON s.emp_no = s1.emp_no
WHERE
    s.from_date = s1.from_date;
    
SELECT 
    de.emp_no, de.dept_no, de.from_date, de.to_date
FROM
    employees.dept_emp de
        JOIN
    (SELECT 
        emp_no, MAX(from_date) AS from_date
    FROM
        employees.dept_emp de1
    GROUP BY emp_no) de1 ON de.emp_no = de1.emp_no
WHERE
    de.to_date > SYSDATE()
        AND de.from_date = de1.from_date;



Select de2.emp_no, de2.dept_no, d.dept_name, s2.salary, Avg(s2.salary) Over w as average_salary_per_department
From (SELECT 
    de.emp_no, de.dept_no, de.from_date, de.to_date
FROM
    employees.dept_emp de
        JOIN
    (SELECT 
        emp_no, Max(from_date) AS from_date
    FROM
        employees.dept_emp de1
    GROUP BY emp_no) de1 ON de.emp_no = de1.emp_no
WHERE
    de.to_date > SYSDATE()
        AND de.from_date = de1.from_date) de2
        Join 
        (SELECT 
    s1.emp_no, s.salary, s.from_date, s.to_date
FROM
    employees.salaries s
        JOIN
    (SELECT 
        emp_no, MAX(from_date) AS from_date
    FROM
        employees.salaries
    GROUP BY emp_no) s1 ON s.emp_no = s1.emp_no
WHERE
    s.to_date > SYSDATE()
        AND s.from_date = s1.from_date) s2 On s2.emp_no = de2.emp_no
    Join 
    employees.departments d On d.dept_no = de2.dept_no
Group by de2.emp_no, d.dept_name
Window w as (Partition by de2.dept_no)
Order by de2.emp_no;

SELECT 
    *
FROM
    employees.salaries;

Select de2.emp_no, de2.dept_no, d.dept_name, s2.salary, Avg(s2.salary) Over w as average_salary_per_department
From (SELECT 
    de.emp_no, de.dept_no, de.from_date, de.to_date
FROM
    employees.dept_emp de
        JOIN
    (SELECT 
        emp_no, Max(from_date) AS from_date
    FROM
        employees.dept_emp de1
    GROUP BY emp_no) de1 ON de.emp_no = de1.emp_no
WHERE
    de.from_date > '2000-01-01'
    AND de.to_date < '2002-01-01'
        AND de.from_date = de1.from_date) de2
        Join 
        (SELECT 
    s1.emp_no, s.salary, s.from_date, s.to_date
FROM
    employees.salaries s
        JOIN
    (SELECT 
        emp_no, MAX(from_date) AS from_date
    FROM
        employees.salaries
    GROUP BY emp_no) s1 ON s.emp_no = s1.emp_no
WHERE
    s.from_date > '2000-01-01'
    AND s.to_date < '2002-01-01'
        AND s.from_date = s1.from_date) s2 On s2.emp_no = de2.emp_no
    Join 
    employees.departments d On d.dept_no = de2.dept_no
Group by de2.emp_no, d.dept_name
Window w as (Partition by de2.dept_no)
Order by de2.emp_no;


SELECT 
    a.dept_no,
    a.dept_name,
    MIN(a.salary) AS min_salary,
    MAX(a.salary) AS max_salary,
    ROUND(AVG(a.salary), 0) AS avg_salary
FROM
    (SELECT 
        de.dept_no, d.dept_name, s.salary
    FROM
        employees.salaries s
    JOIN employees.dept_emp de ON s.emp_no = de.emp_no
    JOIN employees.departments d ON de.dept_no = d.dept_no) a
GROUP BY a.dept_no , a.dept_name
ORDER BY a.dept_no;


With cte as (Select Avg(salary) as avg_salary from employees.salaries)
Select Sum(Case When s.salary > c.avg_salary Then 1 Else 0 End) As no_f_salaries_above_avg,
Count(s.salary) As total_no_of_salary_contracts
from employees.salaries s Join employees.employees e On s.emp_no = e.emp_no And e.gender = 'F' 
Cross Join cte c;

SELECT 
    SUM(CASE
        WHEN s.salary > c.avg_salary THEN 1
        ELSE 0
    END) AS no_f_salaries_above_avg,
    COUNT(s.salary) AS total_no_of_salary_contracts
FROM
    employees.salaries s
        JOIN
    employees.employees e ON s.emp_no = e.emp_no AND e.gender = 'F'
        JOIN
    (SELECT 
        AVG(salary) AS avg_salary
    FROM
        employees.salaries) c;

With cte as (Select Avg(salary) as avg_salary from employees.salaries)
Select Sum(Case When s.salary > c.avg_salary Then 1 Else 0 End) As no_f_salaries_above_avg_w_sum,
Count(Case When s.salary > c.avg_salary Then s.salary Else Null End) As no_f_salaries_above_avg_w_count,
Count(s.salary) As total_no_of_salary_contracts
from employees.salaries s Join employees.employees e On s.emp_no = e.emp_no And e.gender = 'F' 
Join cte c;

With cte as (Select Avg(salary) as avg_salary from employees.salaries)
Select Sum(Case When s.salary < c.avg_salary Then 1 Else 0 End) As no_m_salaries_below_avg,
Count(s.salary) As total_no_of_salary_contracts
from employees.salaries s Join employees.employees e On s.emp_no = e.emp_no And e.gender = 'M' 
Join cte c;

With cte as (Select Avg(salary) as avg_salary from employees.salaries)
Select Count(Case When s.salary < c.avg_salary Then s.salary Else Null End) As no_f_salaries_below_avg,
Count(s.salary) As total_no_of_salary_contracts
from employees.salaries s Join employees.employees e On s.emp_no = e.emp_no And e.gender = 'M' 
Join cte c;

SELECT 
    SUM(CASE
        WHEN s.salary < c.avg_salary THEN 1
        ELSE 0
    END) AS no_m_salaries_below_avg,
    COUNT(s.salary) AS total_no_of_salary_contracts
FROM
    employees.salaries s
        JOIN
    employees.employees e ON s.emp_no = e.emp_no AND e.gender = 'M'
        JOIN
    (SELECT 
        AVG(salary) AS avg_salary
    FROM
        employees.salaries) c;

With cte as (Select Avg(salary) as avg_salary from employees.salaries)
Select Sum(Case When s.salary < c.avg_salary Then 1 Else 0 End) As no_m_salaries_below_avg,
Count(s.salary) As total_no_of_salary_contracts
from employees.salaries s Join employees.employees e On s.emp_no = e.emp_no And e.gender = 'M' 
Cross Join cte c;


With cte_avg_salary as (Select Avg(salary) as avg_salary from employees.salaries),
cte_f_higuest_salary as (Select s.emp_no, Max(s.salary) as f_higuest_salary
From employees.salaries s
Join employees.employees e On s.emp_no = e.emp_no And e.gender = 'F'
Group by s.emp_no)
Select Sum(Case When c2.f_higuest_salary > c1.avg_salary Then 1 Else 0 End) As f_highest_salaries_above_avg,
Count(e.emp_no) As total_no_female_contracts,
Concat(Round((Sum(Case When c2.f_higuest_salary > c1.avg_salary Then 1 Else 0 End)
/Count(e.emp_no))*100,2), '%') As '% percentage'
from employees.employees e
Join cte_f_higuest_salary c2 On e.emp_no = c2.emp_no 
Cross Join cte_avg_salary c1;

With cte_avg_salary as (Select Avg(salary) as avg_salary from employees.salaries),
cte_m_higuest_salary as (Select s.emp_no, Max(s.salary) as m_higuest_salary
From employees.salaries s
Join employees.employees e On s.emp_no = e.emp_no And e.gender = 'M'
Group by s.emp_no)
Select Sum(Case When c2.m_higuest_salary < c1.avg_salary Then 1 Else 0 End) As m_highest_salaries_below_avg,
Count(e.emp_no) As total_no_male_contracts
from employees.employees e
Join cte_m_higuest_salary c2 On e.emp_no = c2.emp_no 
Cross Join cte_avg_salary c1;

With cte_avg_salary as (Select Avg(salary) as avg_salary from employees.salaries),
cte_m_higuest_salary as (Select s.emp_no, Max(s.salary) as m_higuest_salary
From employees.salaries s
Join employees.employees e On s.emp_no = e.emp_no And e.gender = 'M'
Group by s.emp_no)
Select Count(Case When c2.m_higuest_salary < c1.avg_salary Then c2.m_higuest_salary Else Null End) As m_highest_salaries_below_avg,
Count(e.emp_no) As total_no_male_contracts
from employees.employees e
Join cte_m_higuest_salary c2 On e.emp_no = c2.emp_no 
Cross Join cte_avg_salary c1;

With cte_avg_salary as (Select Avg(salary) as avg_salary from employees.salaries),
cte_m_higuest_salary as (Select s.emp_no, Max(s.salary) as m_higuest_salary
From employees.salaries s
Join employees.employees e On s.emp_no = e.emp_no And e.gender = 'M'
Group by s.emp_no)
Select Count(Case When c2.m_higuest_salary < c1.avg_salary Then c2.m_higuest_salary Else Null End) As m_highest_salaries_below_avg
from cte_m_higuest_salary c2 
Join cte_avg_salary c1;

With emp_hired_from_jan_2000 as (Select * From employees.employees Where hire_date > '2000-01-01'),
highest_contract_salary_values as (Select e.emp_no, Max(s.salary) From emp_hired_from_jan_2000 e 
Join employees.salaries s On e.emp_no = s.emp_no Group by e.emp_no)
Select * From highest_contract_salary_values;

Create Temporary Table employees.f_highest_salaries
Select e.emp_no, Max(s.salary) as f_highest_salary
From employees.employees e Join employees.salaries s On e.emp_no = s.emp_no And e.gender = 'F'
Group by e.emp_no
Limit 10;

SELECT 
    *
FROM
    employees.f_highest_salaries
WHERE
    emp_no <= 10010;

Drop table if Exists employees.f_highest_salaries;

SELECT 
    *
FROM
    employees.departments;

Create Temporary Table employees.male_max_salaries
Select e.emp_no, Max(s.salary) as m_highest_salary
From employees.employees e Join employees.salaries s On e.emp_no = s.emp_no And e.gender = 'M'
Group by e.emp_no;

SELECT 
    *
FROM
    employees.male_max_salaries
WHERE
    emp_no <= 10010;
    
Create Temporary Table employees.dates
Select 
	Now() as current_date_and_time,
    Date_sub(Now(), Interval 1 month) as a_month_earlier,
    Date_sub(Now(), Interval -1 year) as a_year_later;
    
Select * from employees.dates;

With cte as (Select 
	Now() as current_date_and_time,
    Date_sub(Now(), Interval 1 month) as a_month_earlier,
    Date_sub(Now(), Interval -1 year) as a_year_later)
Select * from employees.dates d1 Join cte c;

With cte as (Select 
	Now() as current_date_and_time,
    Date_sub(Now(), Interval 1 month) as a_month_earlier,
    Date_sub(Now(), Interval -1 year) as a_year_later)
Select * from employees.dates Union All Select * From cte;

Drop table if Exists employees.dates;

Create Temporary Table employees.dates
Select 
	Now() as current_date_and_time,
    Date_sub(Now(), Interval 2 month) as two_months_earlier,
    Date_sub(Now(), Interval -2 year) as two_years_later;
    
With cte as (Select 
	Now() as current_date_and_time,
    Date_sub(Now(), Interval 2 month) as two_months_earlier,
    Date_sub(Now(), Interval -2 year) as two_years_later)
Select * from employees.dates d1 Join cte c;

With cte as (Select 
	Now() as current_date_and_time,
    Date_sub(Now(), Interval 2 month) as two_months_earlier,
    Date_sub(Now(), Interval -2 year) as two_years_later)
Select * from employees.dates Union All Select * From cte;

Drop table if Exists employees.dates;

Drop table if Exists employees.male_max_salaries;
    
-- Create a temporary table with adjusted salaries based on inflation
CREATE TEMPORARY TABLE salaries_adjusted_for_inflation AS
SELECT 
    emp_no,
    salary,
    ROUND(
        CASE 
            WHEN from_date BETWEEN '1970-01-01' AND '1989-12-31' THEN salary * 6.5
            WHEN from_date BETWEEN '1990-01-01' AND '1999-12-31' THEN salary * 2.8
            ELSE salary * 3
        END, 2
    ) AS inflation_adjusted_salary,
    from_date,
    to_date
FROM salaries;

SELECT * 
FROM salaries_adjusted_for_inflation;

Select 
    Year(de.from_date) as calendar_year, 
    e.gender as gender, 
    Count(e.emp_no) as no_of_employees
From 
    employees_mod.t_employees e 
Join 
    employees_mod.t_dept_emp de 
On 
    e.emp_no = de.emp_no
Group by 
    calendar_year, e.gender
Having 
    calendar_year >= 1990
Order by calendar_year;

Select
    CASE
        WHEN de.from_date < '1998-01-01' THEN 'before'
        ELSE 'on or after' END AS jan_1_1998, 
    e.gender as gender, 
    Count(e.emp_no) as num_of_employees
From 
    employees.employees e 
Join 
    employees.dept_emp de 
On 
    e.emp_no = de.emp_no
Group by 
    jan_1_1998, e.gender;

Use employees_mod;

SELECT 
    d.dept_name,
    ee.gender,
    dm.emp_no,
    dm.from_date,
    dm.to_date,
    e.calendar_year,
    CASE
        WHEN YEAR(dm.to_date) >= e.calendar_year AND YEAR(dm.from_date) <= e.calendar_year THEN 1
        ELSE 0
    END AS active
FROM
    (SELECT 
        YEAR(hire_date) AS calendar_year
    FROM
        t_employees
    GROUP BY calendar_year) e
        CROSS JOIN
    t_dept_manager dm
        JOIN
    t_departments d ON dm.dept_no = d.dept_no
        JOIN 
    t_employees ee ON dm.emp_no = ee.emp_no
ORDER BY dm.emp_no, calendar_year;

USE employees_mod;

SELECT 
    e.gender,
    d.dept_name,
    ROUND(AVG(s.salary), 2) AS salary,
    YEAR(s.from_date) AS calendar_year
FROM
    t_employees e
    JOIN t_dept_emp de ON e.emp_no = de.emp_no
    JOIN t_departments d ON de.dept_no = d.dept_no
    JOIN t_salaries s ON e.emp_no = s.emp_no
GROUP BY 
	d.dept_no,
    e.gender, 
    calendar_year
HAVING calendar_year <= 2002
ORDER BY 
    d.dept_no;


Select * from employees_mod.t_employees;

Use employees_mod;

SELECT 
    e.gender,
    d.dept_name,
    ROUND(AVG(s.salary), 2) AS avg_salary,
    CASE
        WHEN de.from_date < '1998-01-01' THEN 'before'
        ELSE 'on or after' END AS jan_1_1998
FROM
    t_employees e
    JOIN t_dept_emp de ON e.emp_no = de.emp_no
    JOIN t_departments d ON de.dept_no = d.dept_no
    JOIN t_salaries s ON e.emp_no = s.emp_no
Where Year(e.hire_date) >= '1990'
GROUP BY 
	d.dept_no,
    e.gender, 
    jan_1_1998
ORDER BY 
    d.dept_no;
    
Use employees_mod;

DROP PROCEDURE IF EXISTS GetAverageSalary;

DELIMITER $$

CREATE PROCEDURE GetAverageSalary(
    IN min_salary DECIMAL(10, 2),
    IN max_salary DECIMAL(10, 2)
)
BEGIN
    SELECT 
		e.gender,
        d.dept_name,
        Round(AVG(s.salary), 2) AS avg_salary
    FROM 
        t_employees e
	Join
		t_salaries s On e.emp_no = s.emp_no
	Join 
		t_dept_emp de ON s.emp_no = de.emp_no 
	Join
		t_departments d ON de.dept_no = d.dept_no
    WHERE 
        s.salary BETWEEN min_salary AND max_salary
    GROUP BY 
        d.dept_no, e.gender;
END $$

DELIMITER ;

CALL employees_mod.GetAverageSalary(50000, 90000);

SELECT 
    d.dept_name,
    ee.gender,
    dm.emp_no,
    dm.from_date,
    dm.to_date,
    e.calendar_year,
    CASE
        WHEN YEAR(dm.to_date) >= e.calendar_year AND YEAR(dm.from_date) <= e.calendar_year THEN 1
        ELSE 0
    END AS active
FROM
    (SELECT 
        YEAR(hire_date) AS calendar_year
    FROM
        t_employees
    GROUP BY calendar_year) e
        CROSS JOIN
    t_dept_manager dm
        JOIN
    t_departments d ON dm.dept_no = d.dept_no
        JOIN 
    t_employees ee ON dm.emp_no = ee.emp_no
ORDER BY dm.emp_no, calendar_year;

Use employees;
SELECT 
		e.gender,
        d.dept_name,
        Round(AVG(s.salary), 2) AS avg_salary
    FROM 
        employees e
	Join
		salaries s On e.emp_no = s.emp_no
	Join 
		dept_emp de ON s.emp_no = de.emp_no 
	Join
		departments d ON de.dept_no = d.dept_no
    GROUP BY 
        d.dept_no, e.gender;
        
SELECT 
    MIN(dept_no) AS lowest_department_number,
    MAX(dept_no) AS highest_department_number
FROM 
    dept_emp;

SELECT 
    emp_no,
    (SELECT MIN(dept_no) 
     FROM dept_emp de
     WHERE de.emp_no = e.emp_no) AS lowest_department_number,
    CASE
        WHEN emp_no <= 10020 THEN '110022'
        ELSE '110039'
    END AS manager
FROM 
    employees e
WHERE 
    emp_no <= 10040;
    
Select * from employees
Where Year(hire_date) = 2000;

Select * from titles
Where title LIKE ('%engineer%');

Select * from titles
Where title LIKE ('%senior engineer%');  


Use employees;

DROP PROCEDURE IF EXISTS last_dept;

DELIMITER $$

CREATE PROCEDURE last_dept(IN empNumber INT)
BEGIN
    SELECT 
        de.emp_no,
        de.dept_no,
        d.dept_name
    FROM dept_emp de
    JOIN departments d ON de.dept_no = d.dept_no
    WHERE de.emp_no = empNumber
    ORDER BY de.to_date DESC
    LIMIT 1;
END $$

DELIMITER ;

Select * from dept_emp;

CALL last_dept(10010);

SELECT 
    COUNT(*) AS contract_count
FROM 
    salaries
WHERE 
    (DATEDIFF(to_date, from_date) > 365)  -- Contracts longer than 1 year
    AND salary >= 100000;                 -- Salary value higher than or equal to $100,000
    

Select * from dept_manager;

SELECT 
    *
FROM dept_manager dm
CROSS JOIN departments d
WHERE d.dept_no = 'd006';

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM employees e
WHERE e.last_name = 'Bamford'

UNION

SELECT 
    dm.emp_no,
    NULL AS first_name,
    NULL AS last_name,
    dm.dept_no,
    dm.from_date
FROM dept_manager dm;

DROP TRIGGER IF EXISTS check_hire_date;

DELIMITER $$

CREATE TRIGGER check_hire_date
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
    DECLARE today DATE;
    SET today = CURDATE();
    
    IF NEW.hire_date > today THEN
        SET NEW.hire_date = today;
    END IF;
END $$

DELIMITER ;

Select * from employees;

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (999999, '1998-01-01', 'John', 'Doe', 'M', '2099-01-01');

SELECT emp_no, first_name, last_name, hire_date FROM employees WHERE emp_no = 999999;

DROP FUNCTION IF EXISTS get_max_salary;

DELIMITER $$

CREATE FUNCTION get_max_salary(emp_id INT)
RETURNS DECIMAL(10, 2)
Deterministic
BEGIN
    DECLARE max_salary DECIMAL(10, 2);
    
    SELECT MAX(salary) INTO max_salary
    FROM salaries
    WHERE emp_no = emp_id;
    
    RETURN max_salary;
END $$

DELIMITER ;

SELECT get_max_salary(11356) AS max_salary;

DROP FUNCTION IF EXISTS get_min_salary;

DELIMITER $$

CREATE FUNCTION get_min_salary(emp_id INT)
RETURNS DECIMAL(10, 2)
Deterministic
BEGIN
    DECLARE min_salary DECIMAL(10, 2);
    
    SELECT MIN(salary) INTO min_salary
    FROM salaries
    WHERE emp_no = emp_id;
    
    RETURN min_salary;
END $$

DELIMITER ;

SELECT get_min_salary(11356) AS min_salary;

Use employees;

SELECT *
FROM salaries s
WHERE EXISTS (
    SELECT *
    FROM titles t
    WHERE t.emp_no = s.emp_no
      AND t.title = 'Engineer'
);

SELECT 
    t.emp_no,
    t.title,
    (SELECT ROUND(AVG(s.salary), 2) 
     FROM salaries s 
     WHERE s.emp_no = t.emp_no) AS avg_salary
FROM (
    SELECT emp_no, title
    FROM titles
    WHERE title IN ('Staff', 'Engineer')
) t
ORDER BY avg_salary DESC;

DROP FUNCTION IF EXISTS get_salary;

DELIMITER $$

CREATE FUNCTION get_salary(emp_no INT, sal_type VARCHAR(3))
RETURNS DECIMAL(10, 2)
Deterministic
BEGIN
    DECLARE min_salary DECIMAL(10, 2);
    DECLARE max_salary DECIMAL(10, 2);
    DECLARE result DECIMAL(10, 2);
    
    -- Retrieve the minimum and maximum salary for the employee
    SELECT MIN(salary), MAX(salary)
    INTO min_salary, max_salary
    FROM salaries
    WHERE emp_no = emp_no;
    
    -- Determine the output based on the sal_type parameter
    IF sal_type = 'max' THEN
        SET result = max_salary;
    ELSEIF sal_type = 'min' THEN
        SET result = min_salary;
    ELSE
        SET result = max_salary - min_salary;
    END IF;
    
    RETURN result;
END $$

DELIMITER ;

SELECT get_salary(11356, 'max');

SELECT get_salary(11356, 'min');

SELECT get_salary(11356, 'dif');


