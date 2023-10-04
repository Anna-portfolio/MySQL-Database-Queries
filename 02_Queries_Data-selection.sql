-- created by @Anna-portfolio (https://github.com/Anna-portfolio). DISCLAIMER: All the data used in these databases are fictitious. Any similarity to any data is entirely coincidental.

-- QUERIES #2: DATA SELECTION


-- selects all from a given table
SELECT * FROM `company_employees`.`employees`;

-- selects one/multiple columns from a given table
SELECT first_name FROM `company_employees`.`employees`;

SELECT last_name, employee_id FROM `company_employees`.`employees`;

-- selects one/multiple rows from a given table
SELECT * FROM `company_employees`.`employees`
WHERE `employee_id` = 147124;

SELECT * FROM `company_employees`.`employees`
WHERE `employee_id` > 150000;

-- LIMIT: limits the record to a given condition; should always go as the last query in a range of queries to execute
-- LIMIT: gets the first five rows from a given table 
SELECT * FROM `company_employees`.`employees` LIMIT 5;

-- LIMIT: ignores the first five rows from a given table, and gets the following three ones (i.e. 6, 7, and 8)
SELECT * FROM `company_employees`.`employees` LIMIT 5, 3;

-- SELECT DISTINCT: selects only the unique values from a given column (does not show the duplicates)
SELECT DISTINCT `last_name` FROM `company_employees`.`employees`;

-- WHERE clause: filters rows on a given condition
SELECT * FROM `company_employees`.`employees` 
WHERE `department` = 'SFD';

-- AND operator: joins conditions (both must be met)
SELECT * FROM `company_employees`.`employees` 
WHERE `department` = 'SFD' AND `last_name` = 'Wright';

-- OR operator: joins conditions (at least one must be met)
SELECT * FROM `company_employees`.`employees` 
WHERE `department` = 'SFD' OR `last_name` = 'Watts';

-- IN operator: checks whether a given value matches any value in a chosen list
SELECT * FROM `company_employees`.`department` 
WHERE `department_name` IN ('RED');

-- BETWEEN operator: filters data by a from-to condition
SELECT * FROM `company_employees`.`hr_data` 
WHERE `employment_start_date` BETWEEN '1977-01-01' AND '1980-01-01';

-- IS NULL operator: gets data with NULL positions
SELECT `person_id`, `sport_card` FROM `company_employees`.`benefits` 
WHERE `sport_card` IS NULL;

-- IS NOT NULL: gets data which do not have NULL positions
SELECT `person_id`, `sport_card` FROM `company_employees`.`benefits` 
WHERE `sport_card` IS NOT NULL;

-- Equal operator (=): gets the data which meet a given condition
SELECT * FROM `company_employees`.`employees` 
WHERE `department` = 'SFD';

-- Not equal operator (<>, !=): gets the data which do not meet a given condition
SELECT * FROM `company_employees`.`employees` 
WHERE `department` <> 'SFD';

SELECT * FROM `company_employees`.`employees` 
WHERE `department` != 'SFD';

-- Greater than operator (>): gets the data which value is greater than a given condition
SELECT * FROM `company_employees`.`hr_data` 
WHERE `birth_date` > '1990-01-01';

-- Greater than or equal operator (>=): gets the data which value is greater than or equal a given condition
SELECT * FROM `company_employees`.`hr_data` 
WHERE `birth_date` >= '1990-01-01';

-- Less than operator (<): gets the data which value is less than a given condition
SELECT * FROM `company_employees`.`hr_data` 
WHERE `birth_date` < '1990-01-01';

-- Less than or equal operator (<=): gets the data which value is less than or equal a given condition
SELECT * FROM `company_employees`.`hr_data` 
WHERE `birth_date` <= '1990-01-01';

-- LIKE operator: tests whether data contain given characters or not; 
-- LIKE uses two wildcard characters: 
-- '%' for representing a string of characters and '_' for representing a single character

-- LIKE with %: gets all the rows in which first_name starts with 'L' (unspecified number of characters follow 'L')
SELECT * FROM `company_employees`.`employees`
WHERE `first_name` LIKE 'l%'; 

-- LIKE with %: gets all the rows in which last_name ends with 'y' (unspecified number of characters preceed 'y')
SELECT * FROM `company_employees`.`employees`
WHERE `last_name` LIKE '%y'; 

-- LIKE with %: gets all the rows in which last_name includes 'd' (unspecified number of characters stands before and/or after 'd')
SELECT * FROM `company_employees`.`employees`
WHERE `last_name` LIKE '%d%'; 

-- NOT LIKE with %: gets all the rows in which employee_id does not end with '8', and an unspecified number of characters preceeds '8'
SELECT * FROM `company_employees`.`employees`
WHERE `employee_id` NOT LIKE '%8'; 

-- LIKE with _ : gets all the rows in which first_name starts with 'L', and four more characters follows 'L'
SELECT * FROM `company_employees`.`employees`
WHERE `first_name` LIKE 'l____'; 

-- LIKE with _ : gets all the rows in which last_name consists of seven characters, the first one is 'H' and the last one is 'd'
SELECT * FROM `company_employees`.`employees`
WHERE `last_name` LIKE 'h_____d'; 

-- REGEXP: uses regular expression to filter the data
-- REGEXP uses few operators, the frequently used ones are: 
-- '^' to indicate that the data must start with a given string,
-- '$' to indicate that the data must end with a given string,
-- '|' to indicate that the data must include one of the two strings (logical OR),
-- [x], where x represents an additional character / a range of characters that must be included

-- REGEXP with ^ : gets all the rows in which last_name starts with 'Ho-'
SELECT * FROM `company_employees`.`employees`
WHERE `last_name` REGEXP '^ho'; 

-- REGEXP with $ : gets all the rows in which last_name ends with '-an'
SELECT * FROM `company_employees`.`employees`
WHERE `last_name` REGEXP 'an$'; 

-- REGEXP with | : gets all the rows in which last_name either starts with 'Ho-' or ends with '-an'
SELECT * FROM `company_employees`.`employees`
WHERE `last_name` REGEXP '^ho|an$'; 

-- REGEXP with [] : gets all the rows in which last_name includes either '-op-', '-ol-', or '-or-'
SELECT * FROM `company_employees`.`employees`
WHERE `last_name` REGEXP 'o[plr]'; 

-- REGEXP with [] : gets all the rows in which last_name includes 'c' followed by a character from a range starting with 'a' and ending with 'd' (i.e. 'a', 'b', 'c', or 'd')
SELECT * FROM `company_employees`.`employees`
WHERE `last_name` REGEXP 'c[a-d]'; 

-- ALIAS: replaces the column name with an alias name
SELECT `last_name` AS 'surname' FROM `company_employees`.`employees`;

-- ALIAS: serves as a shortcut for a chosen column (must be used further on with next queries, if any)
SELECT * FROM `company_employees`.`hr_data` hd;

-- ORDER BY: orders the table by a given column (default: ascending order)
SELECT * FROM `company_employees`.`employees`
ORDER BY last_name;

-- ORDER BY: orders the table by a given column (descending order)
SELECT * FROM `company_employees`.`employees`
ORDER BY last_name DESC;
