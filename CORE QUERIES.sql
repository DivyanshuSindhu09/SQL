SELECT * FROM first_schema.first_table;

SELECT name, city FROM first_schema.first_table;

SELECT name, marks FROM first_schema.first_table WHERE marks > 90;

SELECT name, id, city FROM first_schema.first_table WHERE marks > 50 LIMIT 3;

SELECT DISTINCT name, marks FROM first_schema.first_table ;

SELECT * FROM first_schema.first_table ORDER BY marks; 

SELECT name, age, marks FROM first_schema.first_table ORDER BY age DESC;

SELECT name, age, marks FROM first_schema.first_table ORDER BY age DESC LIMIT 3;

SELECT name FROM first_schema.first_table WHERE age BETWEEN 19 and 21;

SELECT * FROM first_schema.first_table WHERE city IN('PANIPAT', 'GOHANA');

INSERT INTO first_schema.first_table (name, age, marks, city, id) VALUES
('NULL', 69, NULL, 'NULL', 6);

SELECT * FROM first_schema.first_table WHERE marks IS NULL;

SELECT * FROM first_schema.first_table WHERE marks IS NOT NULL;