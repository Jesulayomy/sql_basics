--  Indexes and indexing in mysql
SHOW INDEXES FROM employees;
CREATE INDEX last_name_idx ON employees(last_name);
SELECT * FROM employees WHERE last_name = "Tentacles";
