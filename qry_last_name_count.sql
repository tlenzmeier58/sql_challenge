-- List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

select count(e.emp_id) as "Count"
	, e.last_name as "Last Name"

from tbl_employee e
group by e.last_name
order by "Count" desc