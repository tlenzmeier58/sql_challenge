-- List the department of each employee with the following information: employee number, last name, first name, and department name.

select e.emp_no as "Employee No"
	, concat(e.first_name, ' ', e.last_name) as "Employee Full Name"
	, dpt.dept_name as "Department"
	

from tbl_employee e
join tbl_dept_emp edpt on edpt.emp_id = e.emp_id
join tbl_department dpt on dpt.dept_id = edpt.dept_id