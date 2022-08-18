-- Employee listing, including salary

select e.emp_no as "Employee Number"
	, e.first_name as "First Name"
	, e.last_name as "Last Name"
	, concat(e.first_name, ' ', e.last_name) as "Employee Full Name"
	, case when e.sex = 'M' then 'Male' else 'Female' end as "Sex"
	, cast(s.salary as money) as "Salary"

from tbl_employee e
join tbl_salaries s on s.emp_id = e.emp_id