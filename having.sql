-- find average salary for each department with more than five members
select DEPARTMENT,count(STAFF_ID) as CountStaff, avg(SALARY) as AVGSalary
from STAFF
group by DEPARTMENT
having count(STAFF_ID) > 5