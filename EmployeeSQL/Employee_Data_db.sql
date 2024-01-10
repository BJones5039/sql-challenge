-- Create table for departments
create table departments (
	dept_no varchar(4) primary key,
	dept_name varchar(20) not null
);

-- Create table for titles
create table titles (
	title_id varchar(20) primary key,
	title varchar(20) not null
);

-- Create table for employees
create table employees (
	emp_no int primary key,
	emp_title_id varchar(20) not null,
	birth_date varchar(10) not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	sex varchar(1) not null,
	hire_date varchar(10) not null,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

-- Create table for dept_emp
create table dept_emp (
	emp_no int not null,
	dept_no varchar(4) not null,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

-- Create table for dept_manager
create table dept_manager (
	dept_no varchar(4) not null,
	emp_no int not null,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no), 
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no) 
);
	
-- Create table for salaries
create table salaries (
	emp_no int not null,
	salary int not null,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
	
-- test
select * from salaries;

SELECT * FROM employees WHERE emp_no = 10001;