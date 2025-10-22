SELECT * FROM first_schema.first_table;

-- Updating existing records in a table 

UPDATE first_schema.first_table
SET city = 'Panipat', name = 'Divyanshu Sindhu'
WHERE id = 1;

SELECT * FROM first_schema.first_table;

--! Deleting a record from a existing table

-- turncating is better than deleting, delete krne k baaad id deleted id k baad se shuru hote hai jaise 9 k baad 10, truncate mein bilkul starting se start hoga
DELETE FROM first_schema.first_table
WHERE name = 'KENZO';
-- Agar condition nhi daali toh sare records delete hojaenge

SELECT * FROM first_schema.first_table;

--! Replacing 
REPLACE INTO first_schema.first_table (id, name, age, marks, city) VALUES
(6, 'KENZO', 21, 33, 'GALGOTIA');
-- this works in mysql only agar same id ka record mil gya toh wo replacce hojaega warna ye add hojaega


--! This works in Postgres SQL
INSERT INTO first_schema.first_table (id, name, age, marks, city)
VALUES (6, 'KENZO', 21, 33, 'GALGOTIA')
ON CONFLICT (id)
DO UPDATE SET
  name = EXCLUDED.name,
  age = EXCLUDED.age,
  marks = EXCLUDED.marks,
  city = EXCLUDED.city;