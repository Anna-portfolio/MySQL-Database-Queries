-- created by @Anna-portfolio (https://github.com/Anna-portfolio). DISCLAIMER: All the data used in these databases are fictitious. Any similarity to any data is entirely coincidental.

-- QUERIES #4: NUMERIC FUNCTIONS

-- COUNT(): used for counting items based on given conditions
-- shows how many items are there on the list
SELECT COUNT(`name`) FROM `company_suppliers`.`suppliers`;

-- counts how many suppliers have 'Ltd.' in their names
SELECT COUNT(`name`) FROM `company_suppliers`.`suppliers`
WHERE `name` LIKE '%Ltd.%';

-- counts how many employees have both a car and a sport card
SELECT COUNT(`person_id`) FROM `company_employees`.`benefits`
WHERE `car_plate` IS NOT NULL
AND  `sport_card` IS NOT NULL;


-- SUM(): gets the sum of chosen values
-- gets the total value paid to suppliers in 2021
SELECT SUM(`costs_2021`) FROM `company_suppliers`.`orders_costs`;

-- gets the total value paid to suppliers in 2021, under condition that the supplier_id is greater than 200
SELECT SUM(`costs_2021`) FROM `company_suppliers`.`orders_costs`
WHERE `supplier_id` > 200;

-- gets the total annual salary of all the employees but for the CEO
SELECT SUM(`annual_salary`) FROM  `company_employees`.`hr_data`
WHERE `person_id` <> 147124;


-- AVG(): gets an average value of given data
-- gets an average annual salary of all the employees, and gives it an alias
SELECT AVG(`annual_salary`) AS 'avg salary' FROM `company_employees`.`hr_data`;

-- gets an average annual salary of the employees born after January 1st, 1990
SELECT AVG(`annual_salary`) FROM `company_employees`.`hr_data`
WHERE `birth_date` > '1990-01-01';

-- gets an average annual salary of the employees who have a permanent contract and were born before January 1st, 1985
SELECT AVG(`annual_salary`) FROM `company_employees`.`hr_data`
WHERE `contract_type` = 'permanent' AND `birth_date` < '1985-01-01';

-- MAX(): gets the highest value 
-- gets the highest annual salary, and gives it an alias
SELECT MAX(`annual_salary`) AS 'the highest salary' FROM `company_employees`.`hr_data`;

-- gets the highest annual salary paid on a fixed-term contract, and gives it an alias
SELECT MAX(`annual_salary`) AS 'highest fixed-term' FROM `company_employees`.`hr_data`
WHERE `contract_type` = 'fixed-term';

-- gets the highest value paid to a supplier in 2021 
SELECT MAX(`costs_2021`) FROM `company_suppliers`.`orders_costs`;


-- MIN(): gets the lowest value 
-- gets the lowest annual salary, and gives it an alias
SELECT MIN(`annual_salary`) AS 'the lowest salary' FROM `company_employees`.`hr_data`;

-- gets the lowest annual salary paid to an employee who is both hired on a permanent basis and was born before January 1st, 1975
SELECT MIN(`annual_salary`) FROM `company_employees`.`hr_data`
WHERE `contract_type` = 'permanent' AND `birth_date` < '1975-01-01';

-- gets the lowest total value paid to a supplier
SELECT MIN(`costs_total`) FROM `company_suppliers`.`orders_costs`;


-- ROUND(): rounds the value
-- rounds the average annual salary of all the employees to two decimal places
SELECT ROUND(AVG(`annual_salary`), 2) FROM `company_employees`.`hr_data`;

-- rounds the average annual salary of the employees with id greater than 150000 (no decimal places), and gives it an alias
SELECT ROUND(AVG(`annual_salary`)) AS 'new employees avg salary' FROM `company_employees`.`hr_data`
WHERE `person_id` > 150000;
