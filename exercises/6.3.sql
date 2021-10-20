/**
 * Exercise 6-3
 * 
 * Sort the results from Exercise 6-2 by the lname column.
 */
use learning_sql;


SELECT fname, lname, "EMP" name_type from employee
UNION
SELECT fname, lname, "IND" name_type from individual
ORDER BY lname;