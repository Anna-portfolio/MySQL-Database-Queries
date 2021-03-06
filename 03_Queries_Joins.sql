-- created by @Anna-portfolio (https://github.com/Anna-portfolio). DISCLAIMER: All the data used in these databases are fictitious. Any similarity to any data is entirely coincidental.

-- QUERIES #3: JOINS

-- INNER JOIN: joins two tables on a given condition ("JOIN" is by default an inner join)
SELECT * FROM `company_employees`.`employees` e
JOIN `company_employees`.`benefits` b
ON e.`employee_id` = b.`person_id`;

-- JOIN: a join across databases
SELECT * FROM `company_employees`.`employees` e
JOIN `company_suppliers`.`orders_costs` oc
ON e.`employee_id` = oc.`person_id`;

-- JOIN: implicit JOIN syntax
SELECT * FROM `company_employees`.`employees` e, `company_suppliers`.`orders_costs` oc
WHERE e.`employee_id` = oc.`person_id`;

-- OUTER JOIN: LEFT JOIN (gets all the items from the condition on the left, whether the condition is true or not)
-- gets all the employees, no matter if they are connected with the suppliers or not
SELECT * FROM `company_employees`.`employees` e
LEFT JOIN `company_suppliers`.`orders_costs` oc
ON e.`employee_id` = oc.`person_id`;

-- OUTER JOIN: RIGHT JOIN (gets all the items from the condition on the right, whether the condition is true or not)
-- gets only those employees who are connected with the suppliers
SELECT * FROM `company_employees`.`employees` e
RIGHT JOIN `company_suppliers`.`orders_costs` oc
ON e.`employee_id` = oc.`person_id`;

-- NATURAL JOIN (joins two columns based on common column name - here, on "person_id"; possible to execute, but not recommended)
SELECT * FROM `company_employees`.`hr_data` 
NATURAL JOIN `company_employees`.`benefits`;

-- UNION (combines records from multiple queries; unions those empoyees whose salary is greater than 700000 with those who were born after January 1st, 1975)
SELECT * FROM `company_employees`.`hr_data` 
WHERE `annual_salary` > 700000
UNION
SELECT * FROM `company_employees`.`hr_data`
WHERE `birth_date` > '1975-01-01';