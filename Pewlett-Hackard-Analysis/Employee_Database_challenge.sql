CREATE TABLE employees(
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);


CREATE TABLE titles(
	emp_no INT NOT NULL,
	title VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- Number of Retiring Employees by Title
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS ti
ON(e.emp_no= ti.emp_no)
WHERE(birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no

SELECT * FROM retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows

SELECT DISTINCT ON (r.emp_no)
	r.emp_no,
	r.first_name,
	r.last_name,
	r.title
INTO unique_titles
FROM retirement_titles AS r
WHERE r.to_date =('9999-01-01')
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles

SELECT COUNT (title)
FROM unique_titles

SELECT u.title, COUNT (title) AS "count"
INTO retiring_titles
FROM unique_titles AS u
GROUP BY title
ORDER BY "count" DESC;

SELECT * FROM retiring_titles

SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	d.from_date,
	d.to_date,
	tit.title
INTO mentorship_eligibilty
FROM employees AS e 
INNER JOIN dept_emp AS d
ON(e.emp_no=d.emp_no)
INNER JOIN titles AS tit
ON(e.emp_no=tit.emp_no)
WHERE d.to_date =('9999-01-01') AND 
(birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;

SELECT * FROM mentorship_eligibilty
