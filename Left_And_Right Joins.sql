-- LEFT JOIN
--! --> left join mein left table k sare records show honge chahe wo match ho ya na ho, agar right table m kam records hai toh uske bache hue records null hojaegene
SELECT s.name AS students, s.age, c.class_name, c.teacher 
FROM studs s --> This is our left table
LEFT JOIN enrollments e ON s.id = e.student_id --studs or enrollment join hogai
LEFT JOIN classes c on e.class_id = c.class_id;

-- Right Join
--! Left join ka ulta
SELECT s.name AS students, s.age, c.class_name, c.teacher 
FROM studs s --> This is our left table
RIGHT JOIN enrollments e ON s.id = e.student_id --studs or enrollment join hogai
RIGHT JOIN classes c on e.class_id = c.class_id;