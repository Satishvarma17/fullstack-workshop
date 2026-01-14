<<<<<<< HEAD
select * from
(select department, name, salary, dense_rank() over(partition by department order by salary desc) as  rank_in_dept from employees) as e 
where rank_in_dept<=3;
=======
select department, name, salary, rank_in_dept from
(select department, name, salary, dense_rank() over(partition by department order by salary desc) as  rank_in_dept from employees) as e 
where rank_in_dept<=3;

--count(rank_in_dept)
>>>>>>> 6d7ffc3b81afc595bed94bfcd758c713402f838a
