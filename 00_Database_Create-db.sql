-- created by @Anna-portfolio (https://github.com/Anna-portfolio). DISCLAIMER: All the data used in these databases are fictitious. Any similarity to any data is entirely coincidental.


-- INFO: This MySQL file creates two databases: 
-- #1 Company's Employees (tables: employees, department, HR data, benefits); 
-- #2 Company's Suppliers (tables: suppliers, orders and costs).


-- Database #1: "company_employees"
CREATE DATABASE `company_employees`; 
USE `company_employees`;

CREATE TABLE `employees` (
  `id` INT NOT NULL PRIMARY KEY,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `position` VARCHAR(100) NOT NULL,
  `department` VARCHAR(20) DEFAULT NULL,
  `employee_id` INT(6) NOT NULL
);

INSERT INTO `employees` VALUES (1, 'Leon', 'Smith', 'CEO', NULL, 147124);
INSERT INTO `employees` VALUES (2, 'Lewis', 'Kennedy', 'Chief RED Officer', 'RED', 111632);
INSERT INTO `employees` VALUES (3, 'Lauren', 'Duncan', 'Chief SFD Officer', 'SFD', 100855);
INSERT INTO `employees` VALUES (4, 'Lucas', 'Chapman', 'Chief HRD Officer', 'HRD', 101554);
INSERT INTO `employees` VALUES (5, 'Gabriella', 'Watts', 'Dynamic Research Officer', 'RED', 105254);
INSERT INTO `employees` VALUES (6, 'Marcel', 'Hammond', 'Investor Operations Architect', 'SFD', 107126);
INSERT INTO `employees` VALUES (7, 'Laurence', 'Moore', 'Chief Optimization Producer', 'SFD', 154789);
INSERT INTO `employees` VALUES (8, 'Victoria', 'Schmidt', 'Regional Tactics Executive', 'SFD', 145874);
INSERT INTO `employees` VALUES (9, 'Tomos', 'Holland', 'Corporate Communications Assistant', 'HRD', 218896);
INSERT INTO `employees` VALUES (10, 'David', 'Hopkins', 'Global Infrastructure Supervisor', 'RED', 202498);
INSERT INTO `employees` VALUES (11, 'Ana', 'Kennedy', 'Regional Tactics Executive', 'SFD', 200378);
INSERT INTO `employees` VALUES (12, 'Amelia', 'Cooper', 'Regional Data Executive', 'HRD', 215862);
INSERT INTO `employees` VALUES (13, 'Monica', 'Mejia', 'Chief Functionality Agent', 'RED', 204957);
INSERT INTO `employees` VALUES (14, 'Joseph', 'Alvarado', 'Chief Usability Architect', 'HRD', 112598);
INSERT INTO `employees` VALUES (15, 'Jean', 'Dawson', 'Customer Applications Producer', 'RED', 175489);
INSERT INTO `employees` VALUES (16, 'Rosa', 'Mcgee', 'Investor Factors Analyst', 'HRD', 104785);
INSERT INTO `employees` VALUES (17, 'Willard', 'Patel', 'Direct Data Supervisor', 'RED', 174986);
INSERT INTO `employees` VALUES (18, 'David', 'Wright', 'Global Assurance Engineer', 'SFD', 112036);
INSERT INTO `employees` VALUES (19, 'Terry', 'Robertson', 'Product Team Consultant', 'HRD', 125489);
INSERT INTO `employees` VALUES (20, 'Lee', 'Patel', 'Internal Infrastructure Designer', 'SFD', 102365);


CREATE TABLE `department` (
  `id` int(1) NOT NULL PRIMARY KEY,
  `department_name` VARCHAR(20) NOT NULL,
  `chief_officer_id` INT(6) NOT NULL,
  `headquarters` VARCHAR(200) NOT NULL,
  `phone` VARCHAR(15) DEFAULT NULL
);

INSERT INTO `department` VALUES (1,'RED', 111632, '27870 Cabot Novi, Michigan (MI), 48377', '614-234-0373');
INSERT INTO `department` VALUES (2,'SFD', 100855, '136 S Clark Dr Los Angeles, California (CA), 90048', '323-273-7766');
INSERT INTO `department` VALUES (3,'HRD', 101554, '164 Ida Ln Junction City, Arkansas (AR), 71749', '319-864-9465');

CREATE TABLE `hr_data` (
  `id` int(3) NOT NULL PRIMARY KEY,
  `person_id` INT(10) NOT NULL,
  `birth_date` date NOT NULL,
  `contract_type` VARCHAR(10) NOT NULL,
  `employment_start_date` DATE NOT NULL,
  `employment_end_date` DATE DEFAULT NULL,
  `annual_salary` INT(7) NOT NULL
);

INSERT INTO `hr_data` VALUES (1, 147124, '1958-08-20', 'permanent', '1977-06-20', NULL, 1187500);
INSERT INTO `hr_data` VALUES (2, 111632, '1963-10-02', 'permanent', '1979-03-09', NULL, 866500);
INSERT INTO `hr_data` VALUES (3, 100855, '1959-06-05', 'permanent', '1978-01-12', NULL, 776500);
INSERT INTO `hr_data` VALUES (4, 101554, '1966-05-12', 'permanent', '1979-09-27', NULL, 825000);
INSERT INTO `hr_data` VALUES (5, 105254, '1961-07-16', 'permanent', '1978-07-14', NULL, 194700);
INSERT INTO `hr_data` VALUES (6, 107126, '1993-04-19', 'fixed-term', '2020-09-11', '2023-09-11', 65000); 
INSERT INTO `hr_data` VALUES (7, 154789, '1963-10-02', 'permanent', '1979-11-16', NULL, 155000);
INSERT INTO `hr_data` VALUES (8, 145874, '1971-09-29', 'permanent', '1991-05-30', NULL, 220000);
INSERT INTO `hr_data` VALUES (9, 218896, '1990-10-26', 'fixed-term', '2020-12-11', '2022-12-11', 75000);
INSERT INTO `hr_data` VALUES (10, 202498, '1991-07-08', 'fixed-term', '2020-06-23', '2022-06-23', 85000);
INSERT INTO `hr_data` VALUES (11, 200378, '1972-08-04', 'permanent', '1990-03-29', NULL, 190000); 
INSERT INTO `hr_data` VALUES (12, 215862, '1992-02-28', 'fixed-term', '2019-03-07', '2022-03-07', 65000);
INSERT INTO `hr_data` VALUES (13, 204957, '1965-09-09', 'permanent', '1979-03-15', NULL, 185000);
INSERT INTO `hr_data` VALUES (14, 112598, '1973-04-23', 'permanent', '1977-11-13', NULL, 175000);
INSERT INTO `hr_data` VALUES (15, 175489, '1977-06-11', 'fixed-term', '2020-03-29', '2022-03-29', 75000);
INSERT INTO `hr_data` VALUES (16, 104785, '1972-10-05', 'permanent', '2001-09-28', NULL, 195000);
INSERT INTO `hr_data` VALUES (17, 174986, '1986-07-02', 'fixed-term', '2019-10-04', '2023-04-19', 65000);
INSERT INTO `hr_data` VALUES (18, 112036, '1981-03-30', 'fixed-term', '2020-01-04', '2022-01-04', 75000);
INSERT INTO `hr_data` VALUES (19, 125489, '1975-06-25', 'permanent', '1974-10-16', NULL, 205000);
INSERT INTO `hr_data` VALUES (20, 102365, '1972-04-02', 'permanent', '1995-01-30', NULL, 215000);

CREATE TABLE `benefits` (
  `person_id` INT(10) NOT NULL PRIMARY KEY,
  `car_plate` VARCHAR(10) DEFAULT NULL,
  `laptop_id` VARCHAR(30) DEFAULT NULL,
  `mobile_number` VARCHAR(15) DEFAULT NULL,
  `sport_card` VARCHAR(3) DEFAULT NULL,
  `health_care` VARCHAR(8) DEFAULT 'n/a'
);

INSERT INTO `benefits` VALUES (147124, 'GTD H2022', 'ARF278513389', '202-555-0325', 'YES', 'premium');
INSERT INTO `benefits` VALUES (111632, 'XKX M8934', 'ARF278513490', '202-555-0035', 'YES', 'premium');
INSERT INTO `benefits` VALUES (100855, 'UHM M8009', 'ARE561752312', '202-555-0358', 'YES', 'premium');
INSERT INTO `benefits` VALUES (101554, 'TJB6212', 'ARG745660120', '202-555-0933', 'YES', 'premium');
INSERT INTO `benefits` VALUES (105254, '282 RBX', 'BGW100236589', NULL, NULL, 'standard');
INSERT INTO `benefits` VALUES (107126, NULL, NULL, NULL, NULL, 'standard'); 
INSERT INTO `benefits` VALUES (154789, NULL, 'BGW784001569', '202-555-0916', 'YES', 'standard');
INSERT INTO `benefits` VALUES (145874, 'UDV8901', 'ARG800145200', '202-555-0633', NULL, 'standard');
INSERT INTO `benefits` VALUES (218896, NULL, 'BGW001369874', '202-555-0613', 'YES', 'premium');
INSERT INTO `benefits` VALUES (202498, NULL, 'BGW001478203', '202-555-0967', 'YES', 'premium');
INSERT INTO `benefits` VALUES (200378, 'WPJ4269', 'ARG777841250', '202-555-0815', NULL, 'premium'); 
INSERT INTO `benefits` VALUES (215862, NULL, 'BGW003256698', '202-555-0122', 'YES', 'premium');
INSERT INTO `benefits` VALUES (204957, '196 EPV', 'BGW100474520', NULL, NULL, 'standard');
INSERT INTO `benefits` VALUES (112598, 'YZD 645', 'ARF778966544', '202-555-1888', 'YES', 'premium');
INSERT INTO `benefits` VALUES (175489, NULL, NULL, NULL, NULL, 'standard');
INSERT INTO `benefits` VALUES (104785, 'YFB3644', 'BGW001222633', '202-555-0492', NULL, 'premium');
INSERT INTO `benefits` VALUES (174986, NULL, 'BGW777885469', '202-555-0142', 'YES', 'premium');
INSERT INTO `benefits` VALUES (112036, NULL, NULL, NULL, NULL, 'standard');
INSERT INTO `benefits` VALUES (125489, '613 OPY', 'BGW222563341', '202-555-0572', 'YES', 'premium');
INSERT INTO `benefits` VALUES (102365, NULL, 'BGW114774255', '202-555-0384', 'YES', 'premium');


-- Database #2: "company_suppliers"
CREATE DATABASE `company_suppliers`; 
USE `company_suppliers`;

CREATE TABLE `suppliers` (
  `id` int(3) NOT NULL PRIMARY KEY,
  `supplier_id` int(3) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `branch` VARCHAR(100) NOT NULL,
  `headquarters` VARCHAR(200) NOT NULL,
  `phone` VARCHAR(15) DEFAULT NULL
);

INSERT INTO `suppliers` VALUES (1, '101', 'Metal Materials Ltd.', 'metal elements and components', '957  Turkey Pen Road, Brooklyn Nebraska (NE), 688471', '402-708-9589');
INSERT INTO `suppliers` VALUES (2, '102', 'Wood & Surfaces Ltd.', 'wood elements and components', '1361  Fidler Drive San Antonio, Texas (TX), 78258', '210-385-9872');
INSERT INTO `suppliers` VALUES (3, '105', 'Petrolex LLC', 'car float service', '773  Broadway Avenue, Blountville, Tennessee (TN), 37617', '731-412-6834');
INSERT INTO `suppliers` VALUES (4, '111', 'Eco-Earth LLC', 'waste treatment', '4993  Elmwood Avenue, Scottsdale, Arizona (AZ), 85251', '480-434-2866');
INSERT INTO `suppliers` VALUES (5, '201', 'Paper Masters Ltd.', 'stationery', '4103  Cunningham Court, Farmington Hills, Michigan (MI), 48335', '517-252-0559');
INSERT INTO `suppliers` VALUES (6, '202', 'Hygine & Co.', 'cleaning products', '4517  Mercer Street, Wheeler,Wisconsin (WI), 54772', '715-218-9053');

CREATE TABLE `orders_costs` (
  `supplier_id` INT(3) NOT NULL PRIMARY KEY,
  `person_id` INT(10) DEFAULT NULL,
  `costs_2021` INT(15) DEFAULT NULL,
  `costs_total` INT(15) DEFAULT NULL
);

INSERT INTO `orders_costs` VALUES ('101', 200378, 1900850, 25500450);
INSERT INTO `orders_costs` VALUES ('102', 102365, 995950, 18950250);
INSERT INTO `orders_costs` VALUES ('105', 218896, 525152, 10561252);
INSERT INTO `orders_costs` VALUES ('111', 112598, 450235, 5250875);
INSERT INTO `orders_costs` VALUES ('201', 154789, 35250, 125065);
INSERT INTO `orders_costs` VALUES ('202', 105254, 25425, 105450);