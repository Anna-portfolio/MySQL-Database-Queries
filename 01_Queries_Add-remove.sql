-- created by @Anna-portfolio (https://github.com/Anna-portfolio). DISCLAIMER: All the data used in these databases are fictitious. Any similarity to any data is entirely coincidental.

-- QUERIES #1: ADD, REMOVE, UPDATE

-- creates a database
CREATE DATABASE `company_employees`; 

-- removes an existing database
DROP DATABASE `company_employees`; 

-- checks if a database exists before removing it
DROP DATABASE IF EXISTS `company_employees`;

-- deletes a table from a database (both are the same)
DROP TABLE `employees`;
DROP TABLE `company_employees`.`employees`;

-- gets a description of a table (types of columns, keys etc.)
DESCRIBE `company_employees`.`benefits`;

-- modifies an existing table (adds/deletes a column)
ALTER TABLE `company_employees`.`department` ADD `contact_person` VARCHAR(100);
ALTER TABLE `company_employees`.`department` DROP COLUMN `phone`;

-- modifies an existing table (adds/deletes a row)
INSERT INTO `company_employees`.`employees` VALUES ('21', 'Mark', 'Smith', 'Corporate Research Technician', 'SFD', 205210);
DELETE FROM `company_employees`.`employees` WHERE `employee_id` = 105254;

-- updates existing data with a new value
UPDATE `company_employees`.`employees`
SET `position` = 'not specified';

-- updates a specified existing data
UPDATE `company_employees`.`benefits`
SET `car_plate` = 'Y2123DS'
WHERE `person_id` = 102365;
