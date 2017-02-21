# http://www.codedata.com.tw/database/mysql-tutorial-basic-query
# Change column name
SELECT 昵称=nickname,电子邮件=email  FROM testtable


# Top 2
SELECT TOP 2 * FROM testtable
# Top 2%
SELECT TOP 20 PERCENT * FROM testtable

# >、>=、=、、!>、!=
SELECT * FROM usertable WHERE age>20

SELECT * FROM usertable ORDER BY age DESC, userid ASC

select * from emp where hiredate between '1982-01-01' and '1982-01-31'