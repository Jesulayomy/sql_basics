-- Coding with BroCode
DROP DATABASE oneDb;
CREATE DATABASE IF NOT EXISTS oneDb;
USE oneDb;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY UNIQUE,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    email VARCHAR(60),
    hourly_pay DECIMAL(5, 2),
    salary DECIMAL(10, 2),
    hire_date DATE,
    CONSTRAINT chk_pay CHECK (hourly_pay >= 10.00)
);

INSERT INTO employees
VALUES (1, "Eugene", "Crabs", "EugeneC@bikini.com", 99.99, 99.99 * 2080, "2022-07-01"), 
    (2, "Spongebob", "Squarepants", "SpongebobS@bikini.com", 26.99, 26.99 * 2080, "2022-07-02"), 
    (3, "Squidward", "Tentacles", "SquidwardT@bikini.com", 26.99, 26.99 * 2080, "2022-07-02"), 
    (4, "Sandy", "Cheeks", "SandyC@bikini.com", 69.99, 69.99 * 2080, "2022-07-01"), 
    (5, "Patric", "Starfish", "PatricS@bikini.com", 12.99, 12.99 * 2080, "2022-07-03"), 
    (6, "Plankton", "Sheldon", "PlanktonS@bikini.com", NULL, NULL, NULL);

UPDATE employees SET hourly_pay = 11.24, hire_date = "2022-07-09"  WHERE employee_id = 6;

CREATE VIEW pay_slip AS SELECT first_name, last_name, email, hourly_pay from employees;
CREATE INDEX last_name_idx ON employees(last_name);
CREATE TRIGGER hourly_pay_update
    BEFORE UPDATE ON employees
    FOR EACH ROW
    SET NEW.salary = (NEW.hourly_pay * 2080);

DELIMITER ||
CREATE PROCEDURE payment(IN id INT)
BEGIN
    SELECT first_name, last_name, email, hourly_pay FROM employees
    WHERE employee_id = id;
END ||
DELIMITER ;

SELECT first_name, salary FROM employees ORDER BY salary DESC, first_name;
CALL payment(1);
