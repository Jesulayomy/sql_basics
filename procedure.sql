-- Creates a stored procedure and calls it

DROP PROCEDURE payment;
DELIMITER ||
CREATE PROCEDURE payment(IN id INT)
BEGIN
    SELECT first_name, last_name, email, hourly_pay FROM employees
    WHERE employee_id = id;
END ||
DELIMITER ;

CALL payment(3);
