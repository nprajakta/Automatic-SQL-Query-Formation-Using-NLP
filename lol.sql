CREATE TABLE departments (
    no     INT             NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (no),
    UNIQUE  KEY (dept_name)
);


CREATE TABLE employees (
    emp_no      INT             NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,
    hire_date   DATE            NOT NULL,
    no      INT             NOT NULL,
    FOREIGN KEY (no)  REFERENCES departments (no)    ON DELETE CASCADE,
    PRIMARY KEY (emp_no)
);



CREATE TABLE titles (
    emp_no      INT             NOT NULL,
    title       VARCHAR(50)     NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE,
    KEY         (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no,title, from_date)
);

CREATE TABLE income (
    emp_no      INT             NOT NULL,
    salary      INT             NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    KEY         (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no, from_date)
);




CREATE TABLE city (
    cityid      INT             NOT NULL,
    emp_no      INT             NOT NULL,
    name  VARCHAR(14)           NOT NULL,
    FOREIGN KEY (emp_no)  REFERENCES employees (emp_no)    ON DELETE CASCADE,
    PRIMARY KEY (cityid)
);




INSERT INTO employees VALUES (1,'2002-10-1','Prajakta','Nalhe','F','2018-08-14',1);
INSERT INTO employees VALUES (2,'2002-08-19','Bhagyashree','Lambat','F',CURRENT_DATE,2);
INSERT INTO employees VALUES (3,'2002-06-17','Anurag','Raut','M',CURRENT_DATE,1);
INSERT INTO employees VALUES (4,'2002-03-26','Ayush','Kulkarni','M','2018-08-14',3);
INSERT INTO employees VALUES (5,'2002-08-14','Adarsh','Mankar','M','2018-08-14',1);
INSERT INTO employees VALUES (5,'2001-08-14','Hritik','Tiwari','M','2018-08-14',1);

INSERT INTO phone VALUES (1,"HTC");
INSERT INTO phone VALUES (2,"Pixel");
INSERT INTO phone VALUES (3,"Nexus");
INSERT INTO phone VALUES (4,"HTC");
INSERT INTO phone VALUES (5,"Pixel");



INSERT INTO departments VALUES (1,"COMP");
INSERT INTO departments VALUES (2,"IT");
INSERT INTO departments VALUES (3,"ENTC");

INSERT INTO pincode VALUES (1,440037,1);
INSERT INTO pincode VALUES (2,400000,2);
INSERT INTO pincode VALUES (3,440037,3);
INSERT INTO pincode VALUES (4,411011,4);
INSERT INTO pincode VALUES (5,411043,5);


INSERT INTO income VALUES (1,1000000,'2018-05-05',CURRENT_DATE);
INSERT INTO income VALUES (2,900000,'2018-05-06',CURRENT_DATE);
INSERT INTO income VALUES (3,800000,'2018-05-07',CURRENT_DATE);
INSERT INTO income VALUES (4,700000,'2018-05-08',CURRENT_DATE);

INSERT INTO titles VALUES (1,'Manager','2018-05-05',CURRENT_DATE);
INSERT INTO titles VALUES (2,'Developer','2018-05-06',CURRENT_DATE);
INSERT INTO titles VALUES (3,'Tester','2018-05-07',CURRENT_DATE);
INSERT INTO titles VALUES (4,'Analyst','2018-05-08',CURRENT_DATE);
INSERT INTO titles VALUES (5,'Manager','2018-05-05',CURRENT_DATE);



INSERT INTO city VALUES (1,1,'Nagpur');
INSERT INTO city VALUES (2,2,'Satara');
INSERT INTO city VALUES (3,3,'Nagpur');
INSERT INTO city VALUES (4,4,'Pune');
INSERT INTO city VALUES (5,5,'Pune');
