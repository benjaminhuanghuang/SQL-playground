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

-- get max average salary
/* -- can not cmbain max and avg
select max(avg(salary)) as max_avg_salary  
from professor
group by department_id
*/

select max(avg_salary)
from (select avg(salary) as avg_salary from professor group by department_id) as tmp

-- get department has max salay 
-- Note, max have to work with group, that why we neet "group by dep" after tmp
select dep, max(avg_salary) from 
(select d.name as dep, avg(p.salary) as avg_salary
from professor as p join department as d on p.department_id = d.id
group by d.name) tmp group by dep
