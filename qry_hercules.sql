-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select concat(e.first_name, ' ', e.last_name) as "Employee Full Name"
	, case when e.sex = 'F' then 'Female' else 'Male' end as Sex

from tbl_employee e

where e.first_name = 'Hercules' and e.last_name like 'B%'