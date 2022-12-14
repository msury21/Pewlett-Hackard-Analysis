-- 1. Retrieve the emp_no, first_name, and
-- last_name columns from the Employees table.
SELECT e.emp_no,
	   e.first_name,
	   e.last_name,
-- 2. Retrieve the title, from_date, and
-- to_date columns from the Titles table.
	   ti.title,
	   ti.from_date,
	   ti.to_date
-- 3. Create a new table using the INTO clause.
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
-- 4. Join both tables on the primary key.
ON (e.emp_no = ti.emp_no)
-- 5. Filter the data on the birth_date column
-- to retrieve the employees who were born between
-- 1952 and 1955. Then, order by the employee number.
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- 8. Copy the query from the Employee_Challenge_starter_code.sql
-- and add it to your Employee_Database_challenge.sql file.
-- 10. Use the DISTINCT ON statement to retrieve the first
-- occurrence of the employee number for each set of rows
-- defined by the ON () clause.
SELECT DISTINCT ON (emp_no)
-- 9. Retrieve the employee number, first and last name,
-- and title columns from the Retirement Titles table.
				   emp_no,
				   first_name,
				   last_name,
				   title
INTO unique_titles
FROM retirement_titles
-- 11. Exclude those employees that have already left
-- the company by filtering on to_date to keep only
-- those dates that are equal to '9999-01-01'.
WHERE (to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

-- 16. Write another query in the Employee_Database_challenge.sql
-- file to retrieve the number of employees by their most recent
-- job title who are about to retire.
-- 17. First, retrieve the number of titles from the
-- Unique Titles table.
SELECT COUNT(title),
	   title
-- 18. Then, create a Retiring Titles table to
-- hold the required information.
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) desc;

-- DELIVERABLE 2!!!!

-- 4. Use a DISTINCT ON statement to retrieve the
-- first occurrence of the employee number for each
-- set of rows defined by the ON () clause.
SELECT DISTINCT ON (e.emp_no)
-- 1. Retrieve the emp_no, first_name, last_name,
-- and birth_date columns from the Employees table.
				   e.emp_no,
				   e.first_name,
				   e.last_name,
				   e.birth_date,
-- 2. Retrieve the from_date and to_date columns
-- from the Department Employee table.
				   de.from_date,
				   de.to_date,
-- 3. Retrieve the title column from the Titles table.
				   ti.title
-- 5. Create a new table using the INTO clause.
INTO mentorship_eligibilty
FROM employees as e
-- 6. Join the Employees and the Department
-- Employee tables on the primary key.
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
-- 7. Join the Employees and the Titles
-- tables on the primary key.
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
-- 8. Filter the data on the to_date column to all
-- the current employees, then filter the data on
-- the birth_date columns to get all the employees
-- whose birth dates are between January 1, 1965
-- and December 31, 1965.
WHERE (de.to_date = '9999-01-01')
  AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
-- 9. Order the table by the employee number.
ORDER BY e.emp_no
				   
	   