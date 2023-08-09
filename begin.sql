-- SQL Interaction
-- Displaying Data
-- DROP DATABASE students;

CREATE DATABASE IF NOT EXISTS school;
USE school;
CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20),
    age INT,
    email VARCHAR(30)
);

SHOW FIELDS FROM students;
