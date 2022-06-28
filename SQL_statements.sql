Select all rows from the classes table.
    SELECT * FROM classes;

Select the name and credits from the classes table where the number of credits is greater than 3.
    SELECT classes.name, classes.credits FROM classes where classes.credits > 3;

All rows from the classes table where credits is an even number.
    SELECT * FROM classes WHERE mod(classes.credits,2) = 0;

All of Tianna's enrollments that she hasn't yet received a grade for.
    SELECT * FROM students RIGHT JOIN enrollments on students.id= enrollments.student_id WHERE enrollments.student_id = 1
AND enrollments.grade IS NULL;
    
All of Tianna's enrollments that she hasn't yet received a grade for, selected by her first name, not her student.id
    SELECT * FROM enrollments LEFT JOIN students on enrollments.student_id = students.id WHERE enrollments.grade IS NULL AND students.first_name = 'Tianna';

All of Tianna's enrollments that she hasn't yet received a grade for, selected by her first name, not her student.id, with the class name included in the result set.
    SELECT * FROM enrollments LEFT JOIN students on enrollments.student_id = students.id INNER JOIN classes on enrollments.class_id = classes.id WHERE enrollments.grade IS NULL AND students.first_name = 'Tianna';

All students born before 1986 who have a 't' in their first or last name.
    SELECT * from students where birthdate < '1986-01-01' and (LOWER(first_name) like '%t%' or LOWER(last_name) like '%t%');

The average age of all the students.
    SELECT AVG(EXTRACT(YEAR from age(birthdate))) FROM students;


Addresses that have a space in their city name.
    -- SELECT * FROM addresses where city like '% %';  (NOT WORKING!!!!!)

Students & their addresses that live in a city with more than one word in the city name.


The average number of credits for classes offered at the school.
    -- SELECT AVG(credits) FROM classes

The first and last name of all students who have received an 'A'.
    -- SELECT (students.first_name, students.last_name) FROM students INNER JOIN enrollments on students.id = enrollments.student_id WHERE enrollments.grade = 'A'

Each student's first name and the total credits they've enrolled in
    -- SELECT (students.first_name, SUM(classes.credits)) FROM students, classes INNER JOIN enrollments on students.id = enrollments.student_id, on class_id= enrollments.class_id

The total number of credits each student has received a grade for.
    -- SELECT SUM(classes.credits) FROM classes RIGHT JOIN enrollments, students on classes.id = enrollments.class_id WHERE enrollment.grade IS NOT NULL;

All enrollments, including the class name.
    -- SELECT (*.enrollments, classes.name) FROM enrollments, classes on enrollments.class_id=classes.id;

Students born between 1982-1985 (inclusive).
    -- SELECT * FROM students WHERE students.birthdate <= '1985-12-12' and students.birthdate => '1982-01-01';

Insert a new enrollment recording that Andre Rohan took PHYS 218 and got an A.
    -- INSERT INTO enrollments (student_id, class_id, grade) VALUES (5, 4, 'A')