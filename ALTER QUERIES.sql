
--ALTER TABLE

--! Adding a column
ALTER TABLE course 
ADD rating INT;

SELECT * FROM course;

--! Renaming a column
ALTER TABLE course
RENAME rating TO reviews;

SELECT * FROM course;

--! Changing datatype of a column
ALTER TABLE course
ALTER COLUMN reviews TYPE CHAR;

SELECT * FROM course;

--! Deleting a column
ALTER TABLE course
DROP reviews;

SELECT * FROM course;