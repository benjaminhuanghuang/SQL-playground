/*
The SQL query below says "return only 10 records, start on record 16 (OFFSET 15)":
  $sql = "SELECT * FROM Orders LIMIT 10 OFFSET 15";

You could also use a shorter syntax to achieve the same result:
  $sql = "SELECT * FROM Orders LIMIT 15, 10";
*/

-- My SQL
select * from professor order by salary limit 2

-- second high
select Salary as SecondHighestSalary from Employee order by Salary desc limit 1 offset 1

SELECT IF(COUNT(Salary) >= 1, Salary, NULL) AS SecondHighestSalary FROM
(SELECT DISTINCT Salary FROM Employee ORDER BY Salary DESC LIMIT 1 , 1) tmp  

--  If there is no second highest salary, then the query should return null.
SELECT  MAX(Salary) as SecondHighestSalary FROM Employee WHERE
Salary NOT IN (SELECT MAX(Salary) FROM Employee)


-- Nth Highest Salary
-- Store procedure
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  set N=N-1;  
  -- Offset = N, return 1
  RETURN (select distinct e.Salary from Employee e order by Salary Desc limit N, 1);
END