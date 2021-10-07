USE learning_sql;

SELECT * FROM transaction
WHERE txn_date BETWEEN '2002-01-01' AND '2002-12-31' 
ORDER BY txn_date asc