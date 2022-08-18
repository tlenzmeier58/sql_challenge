-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select dpt.dept_name as "Department"
	, e.emp_no as "Employee No"
	, concat(e.first_name, ' ', e.last_name) as "Employee Name"

from tbl_employee e
join tbl_dept_emp dp on dp.emp_id = e.emp_id
join tbl_department dpt on dpt.dept_id = dp.dept_id
where dpt.dept_name in ('Sales', 'Development')
order by dpt.dept_name