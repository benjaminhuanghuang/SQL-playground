/*
http://www.w3resource.com/sql/aggregate-functions/Max-with-group-by.php

*/

SELECT working_area, MAX(commission) 
FROM agents 
GROUP BY working_area;

SELECT cust_city, cust_country,
MAX( outstanding_amt )
FROM customer
GROUP BY cust_country, cust_city;

