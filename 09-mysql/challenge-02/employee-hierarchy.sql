select e.name as employee_name, m.name as manager_name 
from employees as e 
left join employees as m 
on e.manager_id=m.id;

--count(*)
