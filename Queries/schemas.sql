-- Creating tables for PH-EmployeeDB
CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);

create table employees (
     emp_no int NOT NULL,
     birth_date date NOT NULL,
     first_name varchar not null,
     last_name varchar not null,
     gender varchar not null,
     hire_date date not null,
     PRIMARY KEY(emp_no)
);

create table dept_manager(
	dept_no varchar(4) not null,
    emp_no int not null,
    from_date date not null,
    to_date date not null,
foreign key(emp_no) references employees(emp_no),
foreign key(dept_no) references departments(dept_no),
	PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);




CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no varchar(4) NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	foreign key(dept_no) references departments(dept_no),
PRIMARY KEY (emp_no,dept_no)
);



CREATE TABLE titles(
	emp_no INT NOT NULL,
	title VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no, from_date)
);

SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        ce.last_name,
        ce.first_name,
        dm.from_date,
        dm.to_date
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN current_emp AS ce
        ON (dm.emp_no = ce.emp_no);
		
		
select count(ce.emp_no),t.title,d.
from current_emp as ce
inner join titles as t on ce.emp_no=t.emp_no
group by title;

select count(ce.emp_no),t.title,d.dept_name
from employees as ce
inner join titles as t on ce.emp_no=t.emp_no
inner join dept_emp as de on ce.emp_no=de.emp_no
inner join departments as d on d.dept_no=de.dept_no
group by t.title,d.dept_name
order by (count(ce.emp_no)) desc;


select count(title),title from mentorship_eligibility
group by title
order by (count(title)) desc;


<<<<<<< HEAD
-- List of managers per department
SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        ce.last_name,
        ce.first_name,
        dm.from_date,
        dm.to_date
INTO manager_info
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN current_emp AS ce
        ON (dm.emp_no = ce.emp_no);
		
		
		


SELECT e.emp_no,
    e.first_name,
e.last_name,
    e.gender,
    s.salary,
    de.to_date
INTO emp_info
FROM employees as e
INNER JOIN salaries as s
ON (e.emp_no = s.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
     AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
	 AND (de.to_date = '9999-01-01');
	 
	 


SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
INTO dept_info
FROM current_emp as ce
INNER JOIN dept_emp AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no);


=======
>>>>>>> 7e4744680e4bd1eadf0861cf5c802167c859f2dd

