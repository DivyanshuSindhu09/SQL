CREATE TABLE students (
  student_id INT PRIMARY KEY,
  student_name VARCHAR(50) NOT NULL
);

CREATE TABLE courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(50) NOT NULL
);

CREATE TABLE enrollments (
  enrollment_id SERIAL PRIMARY KEY,
  student_id INT,
  course_id INT,

  -- If student is deleted, enrollment is deleted
  CONSTRAINT fk_student
    FOREIGN KEY (student_id)
    REFERENCES students(student_id)
    ON DELETE CASCADE,

  -- If course is deleted, course_id in enrollment becomes NULL
  CONSTRAINT fk_course
    FOREIGN KEY (course_id)
    REFERENCES courses(course_id)
    ON DELETE SET NULL
);

--! On delete Cascade
-- If you delete a student, their enrollments are deleted automatically.

--! ON DELETE SET NULL
-- If you delete a course, students remain enrolled, but course_id becomes NULL.

--! ON DELETE RESTRICT
-- Then deleting a course would not be allowed if any student is enrolled in it.