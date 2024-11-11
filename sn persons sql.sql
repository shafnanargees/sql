
use persons;
CREATE TABLE persons(
  c_id int,
  first_name varchar(50),
  last_name varchar(50),
  age int ,
  country varchar(10)
);
INSERT INTO persons(c_id, first_name, last_name, age, country)VALUES(1,'john', 'duo', 31, 'USA');
INSERT INTO persons(c_id, first_name, last_name, age, country)VALUES(2,'robert', 'luna', 22, 'USA');
INSERT INTO persons(c_id, first_name, last_name, age, country)VALUES(3,'david', 'robinson', 22, 'uk');
INSERT INTO persons(c_id, first_name, last_name, age, country)VALUES(4,'john', 'reinhard', 22, 'uk');
INSERT INTO persons(c_id, first_name, last_name, age, country)VALUES(5, 'Harry', 'Potter', 31, 'USA');
INSERT INTO persons(c_id, first_name, last_name, age, country)VALUES(6,'Chris', 'Hemsworth', 43, 'USA');
INSERT INTO persons(c_id, first_name, last_name, age, country)VALUES(7, 'Ron', 'Weasley', 31, 'UK');
select* from persons;


#UPDATE statement is used to modify existing records in a database table.

#update a single value in the given row
UPDATE persons SET age = 21 WHERE c_id = 1;#SQL command updates the age column to 21 where the customer_id equals 1.
UPDATE persons SET age = 33 WHERE c_id = 5;#[WHERE condition] is an optional clause specifying which rows should be updated
UPDATE persons SET first_name = 'Johnny'WHERE c_id = 1;# here first_name changed

-- update multiple values in the given row

UPDATE persons SET first_name = 'Johnny', last_name = 'Doe' WHERE c_id = 1;

-- update multiple rows satisfying the condition

UPDATE persons SET country = 'NP' WHERE age = 22;


#the AND, OR, and NOT operators in SQL are used with the WHERE or HAVING clauses.


#The SQL AND operator selects data if all conditions are TRUE
SELECT first_name, last_name FROM persons WHERE country = 'USA' AND last_name = 'Doe';

#The SQL OR operator selects data if any one condition is TRUE
SELECT first_name, last_name FROM persons WHERE country = 'USA' OR last_name = 'Doe';

#SQL NOT operator selects data if the given condition is FALSE
SELECT first_name, last_name FROM persons WHERE NOT country = 'USA';

#Combining Multiple Operators(AND, OR and NOT)

-- select customers who live in either USA or UK and whose age is less than 26
SELECT * FROM persons WHERE (country = 'USA' OR country = 'UK') AND age < 26;


#Combining Multiple Operators in SQL


-- exclude customers who are from the USA and have 'Doe' as their last name
SELECT *FROM persons WHERE NOT country = 'USA' AND NOT last_name = 'Doe';

#SQL SELECT DISTINCT

-- select the unique ages from the Customers table
SELECT DISTINCT age FROM persons;

-- select the unique countries from the customers table
SELECT DISTINCT country FROM persons;

-- select rows if the first name and country of a customer is unique
SELECT DISTINCT country, first_name FROM persons;

-- count the unique countries where customers are from 
SELECT COUNT(DISTINCT country) FROM persons;













