--Deliverable 1

--Create a Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955. 

select e.emp_no,e.first_name,e.last_name,t.title,t.from_date,t.to_date
into retire_title
from employees as e
inner join titles as t
on e.emp_no=t.emp_no
where e.birth_date between '1952-01-01' and '1955-12-31'
order by emp_no ASC;

select * from retire_title;


-- Create a Unique Titles table that contains the employee number, first and last name, and most recent title

SELECT DISTINCT ON (re.emp_no) re.emp_no,
re.first_name,
re.last_name,
re.title
into title_unique
FROM retire_title as re
WHERE to_date='9999-01-01'
ORDER BY emp_no,  to_date DESC;

select * from title_unique;


--Create a Retiring Titles table that contains the number of titles filled by employees who are retiring.

select count(u.title) ,u.title
into retiring_title
from title_unique as u
group by title
order by count(title) DESC;

select * from retiring_title;



--Deliverable 2

-- Employees eligible for mentorship programs

select DISTINCT ON(e.emp_no) e.emp_no,e.first_name,e.last_name,e.birth_date,
d.from_date,d.to_date,
t.title
into mentorship_eligibility
from employees as e
inner join dept_emp as d
on e.emp_no=d.emp_no
inner join titles as t
on e.emp_no=t.emp_no
where d.to_date='9999-01-01'
and (e.birth_date between '1965-01-01' and '1965-12-31');

select * from mentorship_eligibility;
