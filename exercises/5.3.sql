/*
 *
 * Exercise 5-3
 * Construct a query that finds all employees whose supervisor is assigned to a different
 * department. Retrieve the employees’ ID, first name, and last name.
 *
 */
use learning_sql;

select e.fname e_fname, e.lname e_lname, sup_e.fname sup_e_fname, sup_e.lname sup_e_lname, d.name d, sup_d.name sup_d from employee e
inner join employee sup_e on e.superior_emp_id = sup_e.emp_id
inner join department d on e.dept_id = d.dept_id 
inner join department sup_d on sup_e.dept_id = sup_d.dept_id
where e.dept_id != sup_e.dept_id;