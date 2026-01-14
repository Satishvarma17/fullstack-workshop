select e.name as employee_name, m.name as manager_name 
from employees as e 
left join employees as m 
<<<<<<< HEAD
on e.manager_id=m.id;
=======
on e.manager_id=m.id;

--count(*)
>>>>>>> 6d7ffc3b81afc595bed94bfcd758c713402f838a
