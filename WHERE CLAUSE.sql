-- Where Clause Operators

-- -> Comparison operators =, !=, <, >, >=, <=
-- -> Logical operators AND, OR, NOT
-- -> Range checking: BETWEEN, AND
-- -> Set Matching: IN, NOT IN
-- -> Pattern Matching: LIKE and ILIKE
-- -> Null checking: IS NULL, IS NOT NULL

USE first_db;

SELECT * FROM first_schema.first_table WHERE marks >= 90;

SELECT * FROM first_schema.first_table WHERE marks != 90;

SELECT * FROM first_schema.first_table WHERE marks > 90 AND city = 'PANIPAT';

SELECT * FROM first_schema.first_table WHERE marks = 100 OR city = 'PANIPAT';

SELECT * FROM first_schema.first_table WHERE marks > 90 AND city = 'PANIPAT' AND age = 19; 

SELECT * FROM first_schema.first_table WHERE (marks = 100 AND age = 21) OR city = 'panipat'; --CASE Sensitive

SELECT name FROM first_schema.first_table WHERE NOT city = 'PANIPAT';

SELECT name,age FROM first_schema.first_table
WHERE marks BETWEEN 90 AND 100;

-- SET Matching (IN , NOT IN)

SELECT name FROM first_schema.first_table
WHERE city IN('KAALI GUFA', 'GOHANA');

SELECT name FROM first_schema.first_table
WHERE city NOT IN('KAALI GUFA', 'GOHANA');

-- Pattern Matching
-- Used for searching patterns in Text 

-- LIKE -> Case-Sensitive
-- ILINKE -> Case-Insensitive (Only in PostgresSQL)

-- Name starting with 'A'
SELECT * FROM first_schema.first_table
WHERE name LIKE 'D%';

-- Name ending with 'u'
SELECT * FROM first_schema.first_table
WHERE name LIKE '%u';

-- Name containing 'A'
SELECT * FROM first_schema.first_table
WHERE city LIKE '%A%';

-- ILIKE
SELECT * FROM first_schema.first_table
WHERE name ILIKE '%y%a%';


--IS NULL, IS NOT NULL
SELECT * FROM first_schema.first_table
WHERE marks IS NULL;

SELECT * FROM first_schema.first_table
WHERE marks IS NOT NULL;