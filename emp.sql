-- This SQL file creates the following tables: departments, titles, employees, and salaries.
-- It then inserts some sample data into each table.

CREATE TABLE departments (
  dept_id INT NOT NULL AUTO_INCREMENT,
  dept_name VARCHAR(100) NOT NULL,
  PRIMARY KEY (dept_id)
);

CREATE TABLE titles (
  title_id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  PRIMARY KEY (title_id)
);

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

CREATE TABLE salaries (
  s_id INT NOT NULL AUTO_INCREMENT,
  emp_id INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  PRIMARY KEY (s_id),
  FOREIGN KEY (emp_id) REFERENCES employees (emp_id)
);

INSERT INTO departments (dept_name) VALUES
  ('Customer Support'),
  ('Product Management'),
  ('Research and Development'),
  ('Sales');

INSERT INTO titles (title) VALUES
  ('Customer Support Specialist'),
  ('Product Manager'),
  ('Software Developer'),
  ('Sales Executive'),
  ('Research Scientist');

INSERT INTO employees (first_name, last_name, age, hire_date, dept_id, title_id, company) VALUES
  ('Laura', 'Johnson', 28, '2018-05-20', 1, 1, 'Google'),
  ('Daniel', 'Garcia', 32, '2019-08-15', 4, 2, 'Apple'),
  ('Sophia', 'Brown', 29, '2020-02-10', 2, 1, 'Google'),
  ('Mason', 'Lee', 31, '2015-12-12', 3, 3, 'Meta'),
  ('Olivia', 'Smith', 32, '2016-06-01', 4, 4, 'Microsoft'),
  ('Lucas', 'Wilson', 30, '2017-03-25', 1, 2, 'Apple'),
  ('Chloe', 'Anderson', 29, '2014-11-28', 2, 3, 'Meta'),
  ('Aiden', 'Martinez', 27, '2021-09-30', 3, 1, 'Netflix'),
  ('Emma', 'Gonzalez', 28, '2013-04-05', 4, 2, 'Google'),
  ('Liam', 'Jackson', 29, '2019-07-10', 1, 3, 'Meta'),
  ('Oliver', 'Brown', 31, '2017-01-15', 2, 4, 'Microsoft'),
  ('Ava', 'Harris', 30, '2018-06-02', 3, 1, 'Google'),
  ('Noah', 'Wilson', 28, '2014-05-14', 4, 2, 'Netflix'),
  ('Isabella', 'Martinez', 27, '2016-11-25', 1, 3, 'Apple'),
  ('James', 'Johnson', 25, '2020-08-12', 2, 4, 'Microsoft');

-- Add one salary entry for each employee
INSERT INTO salaries (emp_id, salary, from_date, to_date) VALUES
  (1, 60000, '2018-05-20', '2023-12-31'),
  (2, 70000, '2019-08-15', '2023-12-31'),
  (3, 75000, '2020-02-10', '2023-12-31'),
  (4, 65000, '2015-12-12', '2017-12-31'),
  (5, 70000, '2016-06-01', '2018-05-31'),
  (6, 75000, '2017-03-25', '2019-03-24'),
  (7, 65000, '2014-11-28', '2016-11-27'),
  (8, 72000, '2021-09-30', '2023-12-31'),
  (9, 68000, '2013-04-05', '2015-04-04'),
  (10, 75000, '2019-07-10', '2021-07-09'),
  (11, 72000, '2017-01-15', '2019-01-14'),
  (12, 70000, '2018-06-02', '2020-06-01');
-- Continue to add salary data for any additional employees
