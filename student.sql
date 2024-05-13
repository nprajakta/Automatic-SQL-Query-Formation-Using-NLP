-- Create the departments table
CREATE TABLE departments (
    dept_id INT NOT NULL AUTO_INCREMENT,
    dept_name VARCHAR(40) NOT NULL,
    PRIMARY KEY (dept_id)
);

-- Create the students table
CREATE TABLE students (
    student_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    dept_id INT NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES departments (dept_id),
    PRIMARY KEY (student_id)
);

-- Create the courses table
CREATE TABLE courses (
    course_id INT NOT NULL AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    department_id INT NOT NULL,
    PRIMARY KEY (course_id),
    FOREIGN KEY (department_id) REFERENCES departments (dept_id)
);

-- Create the marks table
CREATE TABLE marks (
    mark_id INT NOT NULL AUTO_INCREMENT,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    mark INT NOT NULL,
    PRIMARY KEY (mark_id),
    FOREIGN KEY (student_id) REFERENCES students (student_id),
    FOREIGN KEY (course_id) REFERENCES courses (course_id)
);

-- Populate the departments table with sample data
INSERT INTO departments (dept_name) VALUES
    ('Computer Science'),
    ('Electrical Engineering'),
    ('Mechanical Engineering'),
    ('Biology'),
    ('Physics');

-- Populate the students table with sample data
INSERT INTO students (first_name, last_name, birth_date, dept_id) VALUES
    ('John', 'Doe', '1998-05-10', 1),
    ('Alice', 'Smith', '1999-02-15', 1),
    ('Bob', 'Johnson', '1997-11-20', 2),
    ('Emily', 'Brown', '2000-04-05', 3),
    ('David', 'Wilson', '1999-08-30', 1),
    ('Sarah', 'Lee', '1998-07-12', 4),
    ('Michael', 'Davis', '1999-12-25', 2),
    ('Olivia', 'Martin', '2000-09-18', 3),
    ('William', 'Hall', '1997-03-15', 1),
    ('Ava', 'Anderson', '1998-06-28', 2);

-- Populate the courses table with sample data
INSERT INTO courses (course_name, department_id) VALUES
    ('Introduction to Programming', 1),
    ('Database Management', 1),
    ('Electrical Circuits', 2),
    ('Thermodynamics', 3),
    ('Molecular Biology', 4),
    ('Quantum Mechanics', 5);

-- Populate the marks table with sample data
INSERT INTO marks (student_id, course_id, mark) VALUES
    (1, 1, 90),
    (1, 2, 85),
    (2, 1, 88),
    (2, 2, 92),
    (3, 3, 78),
    (4, 4, 87),
    (5, 5, 95),
    (6, 1, 75),
    (6, 2, 80),
    (7, 3, 89),
    (8, 4, 93),
    (9, 5, 77),
    (10, 6, 94);
