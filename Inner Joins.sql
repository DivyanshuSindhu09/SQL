--! Inner Joins
-- Ye un rows ko combine krke data banata hai jo sare tables mein match kre

-- SELECT students.name, classes.classname, classes.teacher
-- FROM students 
-- JOIN classes
-- ON students.class_id = classes.class_id;

CREATE TABLE studs(
id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age INT
);

-- Classes table (teachers included)
CREATE TABLE classes(
class_id INT PRIMARY KEY,
class_name VARCHAR(50),
teacher VARCHAR(50)
);

-- Enrollment table (Mapping students and classes)
CREATE TABLE enrollments(
enrollment_id INT PRIMARY KEY,
student_id INT,
class_id INT,
FOREIGN KEY (student_id) REFERENCES studs(id),
FOREIGN KEY (class_id) REFERENCES classes(class_id)
);

-- Adding data in studs
INSERT INTO studs VALUES
(1002, 'Devansh JAAT', 19),
(1003, 'VV', 19),
(1004, 'Comp', 20);

-- Adding data in classes
INSERT INTO classes VALUES
(101, 'Math-II', 'Mrs. Preeti'),
(102, 'Math-I', 'Mrs. Aarti'),
(103, 'English', 'Mrs. Sonia');

-- Adding data in enrollments
INSERT INTO enrollments VALUES
(1, 1001, 101),
(2, 1001, 102),
(3, 1001, 103),
(4, 1002, 102);

-- Performing Inner - JOIN operation
SELECT s.name AS students, s.age, c.class_name, c.teacher 
FROM studs s
JOIN enrollments e ON s.id = e.student_id --studs or enrollment join hogai
JOIN classes c on e.class_id = c.class_id;