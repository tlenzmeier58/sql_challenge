-- Department & Manager

select d.dept_no as "Department Number"
	, d.dept_name as "Department"
	, e.emp_no as "Employee Number"
	, concat(e.first_name, ' ', e.last_name) as "Manager"


from tbl_department d
join tbl_dept_mgr mgr on mgr.dept_id = d.dept_id
join tbl_employee e on e.emp_id = mgr.emp_id