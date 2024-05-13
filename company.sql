-- Create the departments table
CREATE TABLE departments (
    dept_id INT NOT NULL AUTO_INCREMENT,
    dept_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (dept_id)
);

-- Create the titles table
CREATE TABLE titles (
    title_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    PRIMARY KEY (title_id)
);

-- Create the employees table with a "company" column and an "age" column
CREATE TABLE employees (
    emp_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    hire_date DATE NOT NULL,
    dept_id INT NOT NULL,
    title_id INT NOT NULL,
    company VARCHAR(100) NOT NULL,
    PRIMARY KEY (emp_id),
    FOREIGN KEY (dept_id) REFERENCES departments (dept_id),
    FOREIGN KEY (title_id) REFERENCES titles (title_id)
);

-- Create the salaries table
CREATE TABLE salaries (
    salary_id INT NOT NULL AUTO_INCREMENT,
    emp_id INT NOT NULL,
    salary INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    PRIMARY KEY (salary_id),
    FOREIGN KEY (emp_id) REFERENCES employees (emp_id)
);

-- Add more data to the departments table
INSERT INTO departments (dept_name) VALUES
    ('Customer Support'),
    ('Product Management'),
    ('Research and Development'),
    ('Sales');

-- Add more data to the titles table
INSERT INTO titles (title) VALUES
    ('Customer Support Specialist'),
    ('Product Manager'),
    ('Software Developer'),
    ('Sales Executive'),
    ('Research Scientist');

-- Add more employees with various roles, salaries, ages, and company names
INSERT INTO employees (first_name, last_name, age, hire_date, dept_id, title_id, company) VALUES
    ('Laura', 'Johnson', 28, '2018-05-20', 1, 1, 'Google'),
    ('Daniel', 'Garcia', 32, '2019-08-15', 4, 4, 'Apple'),
    ('Sophia', 'Brown', 29, '2020-02-10', 2, 2, 'Google'),
    ('Mason', 'Lee', 31, '2015-12-12', 5, 5, 'Meta'),
    ('Olivia', 'Smith', 32, '2016-06-01', 3, 3, 'Microsoft'),
    ('Lucas', 'Wilson', 30, '2017-03-25', 1, 1, 'Apple'),
    ('Chloe', 'Anderson', 29, '2014-11-28', 4, 4, 'Meta'),
    ('Aiden', 'Martinez', 27, '2021-09-30', 2, 2, 'Netflix'),
    ('Emma', 'Gonzalez', 28, '2013-04-05', 5, 5, 'Google'),
    ('Liam', 'Jackson', 29, '2019-07-10', 4, 4, 'Meta'),
    ('Oliver', 'Brown', 31, '2017-01-15', 3, 3, 'Microsoft'),
    ('Ava', 'Harris', 30, '2018-06-02', 1, 1, 'Google'),
    ('Noah', 'Wilson', 28, '2014-05-14', 2, 2, 'Netflix'),
    ('Isabella', 'Martinez', 27, '2016-11-25', 5, 5, 'Apple'),
    ('James', 'Johnson', 25, '2020-08-12', 4, 4, 'Microsoft');

-- Add more salary data for the newly added employees
INSERT INTO salaries (emp_id, salary, from_date, to_date) VALUES
    (11, 72000, '2018-05-20', '2018-12-31'),
    (11, 74000, '2019-01-01', '2019-12-31'),
    (12, 75000, '2019-08-15', '2019-12-31'),
    (12, 78000, '2020-01-01', '2020-12-31'),
    (13, 68000, '2020-02-10', '2020-12-31'),
    (13, 70000, '2021-01-01', '2021-12-31'),
    (14, 85000, '2015-12-12', '2015-12-31'),
    (14, 88000, '2016-01-01', '2016-12-31'),
    (15, 78000, '2016-06-01', '2016-12-31');

-- You can continue to add more data to the tables as needed
