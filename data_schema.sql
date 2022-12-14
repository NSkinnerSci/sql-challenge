

CREATE TABLE "titles" (
    "title_id" VARCHAR PRIMARY KEY NOT NULL,
    "title" VARCHAR   NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL PRIMARY KEY,
    "emp_title_id" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" date   NOT NULL
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL PRIMARY KEY,
    "dept_name" VARCHAR   NOT NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INT   NOT NULL,
	PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE "salaries" (
    "emp_no" int NOT NULL PRIMARY KEY,
    "salary" int NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
