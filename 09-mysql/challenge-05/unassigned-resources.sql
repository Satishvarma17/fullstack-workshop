<<<<<<< HEAD
SELECT e.id, e.name, e.department
FROM employees e
LEFT JOIN assignments a
    ON e.id = a.employee_id
WHERE a.employee_id IS NULL;
=======
SELECT e.id, e.name, e.department
FROM employees e
LEFT JOIN assignments a
    ON e.id = a.employee_id
WHERE a.employee_id IS NULL;
>>>>>>> 6d7ffc3b81afc595bed94bfcd758c713402f838a
