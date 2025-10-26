-- FULL OUTER JOIN

--dono side k tables k sare records join krta hai, left and right join ek sath

SELECT s.id AS "Student ID", s.name AS students, s.age, c.class_name, c.teacher 
FROM studs s --> This is our left table
FULL OUTER JOIN enrollments e ON s.id = e.student_id --studs or enrollment join hogai
FULL OUTER JOIN classes c on e.class_id = c.class_id;