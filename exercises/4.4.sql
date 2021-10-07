USE learning_sql;

SELECT * FROM customer c 
INNER JOIN individual i ON c.cust_id = i.cust_id 
WHERE i.lname LIKE '_a%e%';
