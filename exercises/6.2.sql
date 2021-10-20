/**
 * Exercise 6-2
 * Write a compound query that finds the first and last names of all individual customers
 * along with the first and last names of all employees.
 */
use learning_sql;


SELECT fname, lname, "EMP" name_type from employee
UNION
SELECT fname, lname, "IND" name_type from individual;
