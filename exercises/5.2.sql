/* 
 Exercise 5-2 

  Write a query that returns the account ID for each nonbusiness customer
 ( customer.cust_type_cd = 'I' ) with the customer’s federal ID ( customer.fed_id ) and
 the name of the product on which the account is based ( product.name ).
 */

use learning_sql;


/**
  customer.cust_type_cd = 'I',
  customer.cust_id -> account.cust_id
  customer.fed_id,
  product_cd.name
 */

select distinct a.account_id, c.fed_id, p.name, c.cust_type_cd  from customer c
inner join account a on c.cust_id = a.cust_id
inner join product p on a.product_cd = p.product_cd
where c.cust_type_cd = 'I';;