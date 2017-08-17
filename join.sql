/*
https://www.youtube.com/watch?v=KTvYHEntvn8
http://coolshell.cn/articles/3463.html
http://www.jianshu.com/p/9e1d3793cba6

Left Join
Right Join

Inner Join 

Full outer Join
*/

-- inner join is intersection
SELECT * FROM TableA INNER JOIN TableB ON TableA.name = TableB.name

-- Full outer join is union. 对于没有匹配的记录，则会以null做为值
SELECT * FROM TableA FULL OUTER JOIN TableB ON TableA.name = TableB.name

-- vote (id, vote_title, vote_sum) and voter(id, ip, vote_time, vote_id)

-- Demo1 
select vote.id, vote.vote_title, vote.ip from vote right join voter on vote.id
