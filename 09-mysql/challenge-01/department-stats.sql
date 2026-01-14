<<<<<<< HEAD
select department,count(name) as employee_count, avg(salary) as avg_salary, max(salary) as max_salary 
from employees 
group by department 
having employee_count>2;
=======
select department,count(*) as employee_count, avg(salary) as avg_salary, max(salary) as max_salary 
from employees 
group by department 
having employee_count>2;
>>>>>>> 6d7ffc3b81afc595bed94bfcd758c713402f838a
