/*
-- professor
id  name  salary department_id


-- department
id  name

*/

-- list professor in department
select p.name, p.salary,  d.name 
from department as d join professor as p 
on p.department_id = d.id


select p.name, p.salary,  d.name 
from professor as p join department as d 
on p.department_id = d.id

-- get average salary per department
select d.name, avg(p.salary) as avg_salary
from professor as p join department as d on p.department_id = d.id
group by d.name

-- get max salary in department
select d.name, MAX(p.salary)
from professor as p join department as d on p.department_id = d.id
group by d.name


-- get department has max salay 
select d.name, max(avg(p.salary) as avg_salary)
from professor as p join department as d on p.department_id = d.id
group by d.name

