CREATE TABLE course(
course_id SERIAL PRIMARY KEY, --Serial is custom contraint of POSTGRES -> auto increment
course_name VARCHAR(100) NOT NULL UNIQUE,
description TEXT,
duration INT CHECK(duration > 0),
start_date DATE NOT NULL,
end_date DATE,
CONSTRAINT check_dates CHECK (end_date IS NULL OR end_date>start_date), --CUSTOM CONSTRAINT
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP --by default this will have current time
);	

INSERT INTO course (course_id, course_name, description, duration, start_date, end_date) VALUES
(1, 'WEB DEV', 'Learn development from scratch', 20, '2025-12-09', NULL);	

SELECT * FROM course;