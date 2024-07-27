SELECT DISTINCT practical_4.students.firstname, practical_4.courses.coursecode 
FROM practical_4.students, practical_4.student_taking_course, courses
WHERE lastname = "Murphy";