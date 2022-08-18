-- Employees hired in 1986

select e.first_name as "First Name"
	, e.last_name as "Last Name"
	, concat(e.first_name, ' ', e.last_name) as "Employee Full Name"
	, e.hire_date as "Hire Date"

from tbl_employee e
where date_part('year', e.hire_date) = 1986