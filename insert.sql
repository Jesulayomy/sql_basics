-- INSERT SYNTAX
INSERT INTO employees
VALUES (1, "Eugene", "Crabs", "EugeneC@bikini.com", 99.99, "2022-07-01"), 
    (2, "Spongebob", "Squarepants", "SpongebobS@bikini.com", 26.99, "2022-07-02"), 
    (3, "Squidward", "Tentacles", "SquidwardT@bikini.com", 26.99, "2022-07-02"), 
    (4, "Sandy", "Cheeks", "SandyC@bikini.com", 69.99, "2022-07-01"), 
    (5, "Patric", "Starfish", "PatricS@bikini.com", 12.99, "2022-07-03"), 
    (6, "Plankton", "Sheldon", "PlanktonS@bikini.com", NULL, NULL);

UPDATE employees SET hourly_pay = 11.24, hire_date = "2022-07-09"  WHERE employee_id = 6;
